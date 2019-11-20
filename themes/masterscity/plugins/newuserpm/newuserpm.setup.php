<?PHP
/* ====================
[BEGIN_COT_EXT]
Code=newuserpm
Name=New User PM
Description=Sends a PM for every new registered user
Version=1
Date=2015-Oct-04
Author=ZEKE RICH
Copyright=This plugin can be used for free.
Notes=Plugin By ZEKE RICH
SQL=
Auth_guests=R
Lock_guests=12345A
Auth_members=RW
Lock_members=12345A
[END_COT_EXT]

[BEGIN_COT_EXT_CONFIG]
fromuserid=01:string::no-reply@delphieng.com:The email from
touserid=02:string::zeesmobile@gmail.com:The email to
fromusername=03:string::NO REPLY:Name of the sender
messagetitle=04:string::New member [user] has been registered
message=05:words::Hello, there is a new member [user]\r\n with the email [email].\r\n Administrator:Write what you want every new member to read. Use [user] for there name and [email] for the email to display
[END_COT_EXT_CONFIG]
==================== */

if ( !defined('SED_CODE') ) { die("Wrong URL."); }

?>
