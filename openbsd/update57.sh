cd /etc/X11/app-defaults
rm Beforelight Bitmap Bitmap-color Bitmap-nocase Chooser Clock-color
rm Editres Editres-color KOI8RXTerm SshAskpass UXTerm Viewres
rm Viewres-color XCalc XCalc-color XClipboard XClock
rm XClock-color XConsole XFontSel XLoad XLock XLogo
rm XLogo-color XMore XSm XTerm XTerm-color Xedit
rm Xedit-color Xfd Xgc Xgc-color Xmag Xman Xmessage
rm Xmessage-color Xsystrace Xvidtune

rm -f /etc/rc.d/named
rm -f /usr/sbin/dnssec-keygen
rm -f /usr/sbin/dnssec-signzone
rm -f /usr/sbin/named
rm -f /usr/sbin/named-checkconf
rm -f /usr/sbin/named-checkzone
rm -f /usr/sbin/nsupdate
rm -f /usr/sbin/rndc
rm -f /usr/sbin/rndc-confgen
rm -f /usr/share/man/man5/named.conf.5
rm -f /usr/share/man/man5/rndc.conf.5
rm -f /usr/share/man/man8/dnssec-keygen.8
rm -f /usr/share/man/man8/dnssec-signzone.8
rm -f /usr/share/man/man8/named.8
rm -f /usr/share/man/man8/named-checkconf.8
rm -f /usr/share/man/man8/named-checkzone.8
rm -f /usr/share/man/man8/nsupdate.8
rm -f /usr/share/man/man8/rndc-confgen.8
rm -f /usr/share/man/man8/rndc.8

rm -f /usr/sbin/openssl
rm -f /etc/rc.d/nginx
rm -f /usr/sbin/nginx
rm -f /usr/share/man/man8/nginx.8
rm -f /usr/share/man/man5/nginx.conf.5
rm -f /sbin/mount_procfs
rm -f /usr/share/man/man8/mount_procfs.8
rm -rf /usr/include/libmilter
rm -rf /usr/libdata/perl5/site_perl/`uname -p`-openbsd/libmilter
rm -rf /usr/libexec/sendmail
rm -rf /usr/share/sendmail  # preserve mc files first if needed

rm -f /etc/rc.d/sendmail
rm -f /usr/lib/{libmilter.a,libmilter.so.3.0,libmilter_p.a}
rm -f /usr/libexec/smrsh
rm -f /usr/sbin/{editmap,mailstats,praliases}
rm -f /usr/share/man/man1/{hoststat.1,praliases.1,purgestat.1}
rm -f /usr/share/man/man8/{editmap.8,mailq.8,mailstats.8,smrsh.8}
rm -f /var/log/sendmail.st
rmdir /usr/libexec/sm.bin
rm -rf /usr/lkm /usr/share/lkm /dev/lkm
rm -f /usr/bin/modstat
rm -f /sbin/mod{,un}load
rm -f /usr/share/man/man8/mod{stat,load,unload}.8
rm -f /usr/share/man/man4/lkm.4
rm -f /usr/share/mk/bsd.lkm.mk /usr/include/sys/lkm.h

rm -f /usr/include/ressl.h
rm -f /usr/lib/libressl.* /usr/lib/libressl_*
rm -f /usr/share/man/man3/ressl_*
rm /usr/mdec/installboot /usr/share/man/man8/sparc64/installboot.8
rm /etc/rc.d/rtsold /sbin/rtsol /usr/sbin/rtsold
rm /usr/share/man/man8/rtsol.8 /usr/share/man/man8/rtsold.8
rm -f /usr/X11R6/include/GL/glcorearb.h
rm -f /usr/X11R6/include/EGL/eglextchromium.h

rm -r /var/tmp
ln -s /tmp /var/tmp

groupdel _lkm
userdel smmsp
groupdel smmsp

rm -rf /var/www/icons
rmdir /var/www/conf/{modules,modules.sample}
rmdir /var/www/users
rm -f /var/www/cgi-bin/{printenv,test-cgi}
rm -f /var/www/conf/{httpd.conf,magic,mime.types}
rm -f /var/www/htdocs/{apache_pb.gif,blowfish.jpg,bsd_small.gif,index.html}
rm -f /var/www/htdocs/{lock.gif,logo23.jpg,logo24.jpg,mod_ssl_sb.gif}
rm -f /var/www/htdocs/{openbsd_pb.gif,openbsdpower.gif,openssl_ics.gif}
rm -f /var/www/htdocs/smalltitle.gif