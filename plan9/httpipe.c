#include <u.h>
#include <libc.h>

void main(int argc, char *argv[])
{
	char dir[40], ndir[40], buf[1024];
	int fd, ctl, srvfd, n;
	int pipefd[2];

	pipe(pipefd);

	srvfd = create("/srv/httpipe", OWRITE|ORCLOSE, 0666);
	if(srvfd < 0) sysfatal("srv/httpipe %r\n");
	fprint(srvfd, "%d", pipefd[0]);
	close(pipefd[0]);

	announce("tcp!*!8888", dir);

	while(1){
		ctl = listen(dir, ndir);
		fd = accept(ctl, ndir);
		close(ctl);

		if(fd < 0) sysfatal("accept %r\n");

		fprint(fd, "HTTP/1.1 200 OK\nContent-Type: audio/mpeg\n\n");

		while(1){
			n = read(pipefd[1], buf, 1024);
			if(write(fd, buf, n) !=n){
				print("foo\n");
				break;
			}
		}
		close(fd);
	}
}