#!/usr/bin/expect -f
#export TERM=linux
#set KEY_DOWN \x1b\[B
# +
set KEY_UP \x2B
# -
set KEY_DOWN \x2D
# >
set KEY_RIGHT \x3E
# <
set KEY_LEFT \x3C
set RETURN \r
set TAB \t
set NEXT_PAGE \x1b\[6~
set PREV_PAGE \x1b\[5~

set timeout -1
# exp_internal 1

spawn ./menu
# fill form
send -- "one"
send -- $KEY_DOWN
send -- "two"
send -- $RETURN
expect "arg1=one"
expect "arg2=two"
send -- $TAB
send -- $KEY_DOWN
send -- $KEY_DOWN
send -- $RETURN
sleep .5
expect "msg=3. Remember the sabbath day, to keep it holy."
send -- $KEY_RIGHT
send -- $KEY_RIGHT
sleep 3
send -- $RETURN
puts "             seems to be OK"
