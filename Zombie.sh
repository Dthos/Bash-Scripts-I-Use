
#!/usr/bin/env bash                                                                                                                                                                                                                       
                                                                                                                                                                                                                                          
kill -9 $(ps -eo pid,etime,comm,user,tty | grep 'menu\|cob' | \
grep ? | awk '{print $1}')