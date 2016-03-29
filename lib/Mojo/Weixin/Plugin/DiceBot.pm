package Mojo::Weixin::Plugin::DiceBot;
use POSIX qw(strftime);
use Encode;
use List::Util qw(first);
use Cwd;
use POSIX::strftime::GNU;
use POSIX 'strftime';
use Inline "Lua" => <<EOLUA;
function lua_load(path)
	print("lua, path=", path)
	path=path:match(".*/")
	package.path=path.."luascript/?.lua"
	a,b=loadfile(path.."/main.lua")
	print(b,"test from lua", main)
	a()
end

function lua_main(sayf, msg,time,buddy)
	main(sayf, msg, time, buddy, "BUDDY_NUM", "QUN" ,"QUN_NUM")
end

EOLUA

lua_load($INC{"Mojo/Weixin/Plugin/DiceBot.pm"});

#my $api = 'http://www.tuling123.com/openapi/api';
my %ban;
my @limit_reply = (
    "对不起，请不要这么频繁的艾特我",
    "对不起，您的艾特次数太多",
    "说这么多话不累么，请休息几分钟",
);
sub call{
    my $client = shift;
    my $data   = shift;

    my $notice_reply = ref $data->{notice_reply} eq "ARRAY"?$data->{notice_reply}:\@limit_reply;
#    my $notice_limit = $data->{notice_limit} || 8;
#    my $warn_limit = $data->{warn_limit} || 10;
#    my $ban_limit = $data->{ban_limit} || 12;
#    my $is_need_at = defined $data->{is_need_at}?$data->{is_need_at}:1;

    #my $counter = $client->new_counter(id=>'DiceBot',period=>$data->{period} || 600);
    #$client->on(login=>sub{%ban = ();$counter->reset();});
    $client->on(receive_message=>sub{
        my($client,$msg) = @_;
        return if not $msg->allow_plugin;
#        return if $msg->type !~ /^message|group_message|sess_message$/;
#        return if exists $ban{$msg->sender->id};
        my $sender_nick = $msg->sender->displayname;
        my $user_nick = $msg->receiver->displayname;
#        return if $is_need_at and $msg->type eq "group_message" and !$msg->is_at;
        if($msg->type eq 'group_message'){
#            return if $data->{is_need_at} and $msg->type eq "group_message" and !$msg->is_at;
#            return if ref $data->{ban_group}  eq "ARRAY" and first {$_=~/^\d+$/?$msg->group->gnumber eq $_:$msg->group->gname eq $_} @{$data->{ban_group}};
#            return if ref $data->{allow_group}  eq "ARRAY" and !first {$_=~/^\d+$/?$msg->group->gnumber eq $_:$msg->group->gname eq $_} @{$data->{allow_group}};
#            return if ref $data->{ban_user} eq "ARRAY" and first {$_=~/^\d+$/?$msg->sender->qq eq $_:$sender_nick eq $_} @{$data->{ban_user}};
#           my $limit = $counter->check($msg->group->gid ."|" .$msg->sender->id);
#            if($is_need_at and $limit >= $ban_limit){
#                $ban{$msg->sender->id} = 1;
#                $client->reply_message($msg,"\@$sender_nick " . "您已被列入黑名单，$ban_time秒内提问无视",sub{$_[1]->msg_from("bot")});
#                $counter->clear($msg->group->gid ."|" .$msg->sender->id);
#                $client->timer($data->{ban_time} || 1200,sub{delete $ban{$msg->sender->id};});
#                return;
#            }
#            if($is_need_at and $limit >= $warn_limit){
#                $client->reply_message($msg,"\@$sender_nick " . "警告，您艾特过于频繁，即将被列入黑名单，请克制",sub{$_[1]->msg_from("bot")});
#                return;
#            }
#             if($is_need_at and $limit >= $notice_limit){
#                $client->reply_message($msg,"\@$sender_nick " . $limit_reply->[int rand(@$limit_reply)],sub{$_[1]->msg_from("bot")});
#                return;
#            }
        }
        else{
#            return if ref $data->{ban_user} eq "ARRAY" and first {$_=~/^\d+$/?$msg->sender->qq eq $_:$sender_nick eq $_} @{$data->{ban_user}};
        }
        $msg->allow_plugin(0);

        my $input = $msg->content;
        $input=~s/\@\Q$user_nick\E ?|\[[^\[\]]+\]\x01|\[[^\[\]]+\]//g;
#        return unless $input;

#        my @query_string = (
#            "key"       =>  $data->{apikey} || "4c53b48522ac4efdfe5dfb4f6149ae51",
#            "userid"    =>  $msg->sender->id,
#            "info"      =>  decode("utf8",$input),
#        );

#        push @query_string,(loc=>$msg->sender->city."市") if $msg->type eq "group_message" and  $msg->sender->city;
#        $client->http_get($api,{json=>1},form=>{@query_string},sub{
#            my $json = shift;
#            return unless defined $json;
#            return if $json->{code}=~/^4000[1-7]$/;
#            my $reply;
#            if($json->{code} == 100000){
#                return unless $json->{text};
#                $reply = encode("utf8",$json->{text});
#            }
#            elsif($json->{code} == 200000){
#                $reply = encode("utf8","$json->{text}$json->{url}");
#            }
#            else{return}

#            $reply  = "\@$sender_nick " . $reply  if $msg->type eq 'group_message' and rand(100)>20;
#            $reply = $client->truncate($reply,max_bytes=>500,max_lines=>10) if ($msg->type eq 'group_message' and $data->{is_truncate_reply});
#            $client->reply_message($msg,$reply,sub{$_[1]->msg_from("bot")}) if $reply;
#        });
#
#		my $time =strftime("%H:%M:%S",localtime($msg->msg_time));
		
		lua_main(sub{
			my $arg = shift;
			$client->reply_message($msg,$arg,sub{$_[1]->from("bot")});
		},$msg->content,"",$msg->sender->name);
#		if ($msg->is_at) {
#			$client->reply_message($msg,"en?",sub{$_[1]->msg_from("bot")});
#		}
    });
}
1;
