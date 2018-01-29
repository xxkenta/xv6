
_ezsh:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  exit();
}

int 
main (int argc, char **argv)
{
       0:	55                   	push   %ebp
       1:	89 e5                	mov    %esp,%ebp
       3:	53                   	push   %ebx
    int cmd_count = 0;
       4:	31 db                	xor    %ebx,%ebx
  exit();
}

int 
main (int argc, char **argv)
{
       6:	83 e4 f0             	and    $0xfffffff0,%esp
       9:	81 ec 20 27 00 00    	sub    $0x2720,%esp
    char commands[100][100];
    
	while (1){
		static char buf[100];
    int fork_answer;      
	        while(getcmd(buf, sizeof(buf), cmd_count) >= 0){
       f:	89 5c 24 08          	mov    %ebx,0x8(%esp)
      13:	c7 44 24 04 64 00 00 	movl   $0x64,0x4(%esp)
      1a:	00 
      1b:	c7 04 24 80 19 00 00 	movl   $0x1980,(%esp)
      22:	e8 69 01 00 00       	call   190 <getcmd>
      27:	85 c0                	test   %eax,%eax
      29:	0f 88 3d 01 00 00    	js     16c <main+0x16c>
	            buf[strlen(buf)-1] = 0;
      2f:	c7 04 24 80 19 00 00 	movl   $0x1980,(%esp)
      36:	e8 85 0c 00 00       	call   cc0 <strlen>
              strcpy(commands[cmd_count], buf);
      3b:	8d 54 24 10          	lea    0x10(%esp),%edx
      3f:	c7 44 24 04 80 19 00 	movl   $0x1980,0x4(%esp)
      46:	00 
    
	while (1){
		static char buf[100];
    int fork_answer;      
	        while(getcmd(buf, sizeof(buf), cmd_count) >= 0){
	            buf[strlen(buf)-1] = 0;
      47:	c6 80 7f 19 00 00 00 	movb   $0x0,0x197f(%eax)
              strcpy(commands[cmd_count], buf);
      4e:	6b c3 64             	imul   $0x64,%ebx,%eax
      51:	01 d0                	add    %edx,%eax
      53:	89 04 24             	mov    %eax,(%esp)
      56:	e8 e5 0b 00 00       	call   c40 <strcpy>
	            //printf(2, "commands: %s\n", commands[0]);
	            //printf(2, "commands: %s\n", commands[1]);
	            //printf(2, "commands: %s\n", commands[2]);
    	        //printf(2, "string from commands array: -%s-\n", (commands[cmd_count]));
  
	            if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){ //checks to see if CD command was entered because CD is not supported by default
      5b:	0f b6 05 80 19 00 00 	movzbl 0x1980,%eax
      62:	3c 63                	cmp    $0x63,%al
      64:	74 42                	je     a8 <main+0xa8>
	                buf[strlen(buf)-1] = 0;
	                if(chdir(buf+3) < 0)
	                    printf(2, "cannot cd %s\n", buf+3);
	                continue;
	            }
	            else if(buf[0] == '#'){
      66:	3c 23                	cmp    $0x23,%al
      68:	0f 84 9a 00 00 00    	je     108 <main+0x108>
	                }
	                wait();
	                continue;
	            }
	            
	            else if(buf[strlen(buf)-1] == '&'){
      6e:	c7 04 24 80 19 00 00 	movl   $0x1980,(%esp)
      75:	e8 46 0c 00 00       	call   cc0 <strlen>
      7a:	80 b8 7f 19 00 00 26 	cmpb   $0x26,0x197f(%eax)
      81:	0f 84 b1 00 00 00    	je     138 <main+0x138>
	                continue;
	              }
	              continue;
	            }
	            else{
    	          fork_answer = fork();
      87:	e8 ce 0d 00 00       	call   e5a <fork>
      	        if (fork_answer == 0){
      8c:	85 c0                	test   %eax,%eax
      8e:	0f 84 dd 00 00 00    	je     171 <main+0x171>
                      argv[1] = "hello";
                      argv[2] = 0;
      	            exec(buf, argv);
      	            */
      	        }
    	        cmd_count++;
      94:	83 c3 01             	add    $0x1,%ebx
    	        wait();
      97:	e8 ce 0d 00 00       	call   e6a <wait>
      9c:	e9 6e ff ff ff       	jmp    f <main+0xf>
      a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
	            //printf(2, "commands: %s\n", commands[0]);
	            //printf(2, "commands: %s\n", commands[1]);
	            //printf(2, "commands: %s\n", commands[2]);
    	        //printf(2, "string from commands array: -%s-\n", (commands[cmd_count]));
  
	            if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){ //checks to see if CD command was entered because CD is not supported by default
      a8:	80 3d 81 19 00 00 64 	cmpb   $0x64,0x1981
      af:	75 bd                	jne    6e <main+0x6e>
      b1:	80 3d 82 19 00 00 20 	cmpb   $0x20,0x1982
      b8:	75 b4                	jne    6e <main+0x6e>
	                buf[strlen(buf)-1] = 0;
      ba:	c7 04 24 80 19 00 00 	movl   $0x1980,(%esp)
      c1:	e8 fa 0b 00 00       	call   cc0 <strlen>
	                if(chdir(buf+3) < 0)
      c6:	c7 04 24 83 19 00 00 	movl   $0x1983,(%esp)
	            //printf(2, "commands: %s\n", commands[1]);
	            //printf(2, "commands: %s\n", commands[2]);
    	        //printf(2, "string from commands array: -%s-\n", (commands[cmd_count]));
  
	            if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){ //checks to see if CD command was entered because CD is not supported by default
	                buf[strlen(buf)-1] = 0;
      cd:	c6 80 7f 19 00 00 00 	movb   $0x0,0x197f(%eax)
	                if(chdir(buf+3) < 0)
      d4:	e8 f9 0d 00 00       	call   ed2 <chdir>
      d9:	85 c0                	test   %eax,%eax
      db:	0f 89 2e ff ff ff    	jns    f <main+0xf>
	                    printf(2, "cannot cd %s\n", buf+3);
      e1:	c7 44 24 08 83 19 00 	movl   $0x1983,0x8(%esp)
      e8:	00 
      e9:	c7 44 24 04 ba 13 00 	movl   $0x13ba,0x4(%esp)
      f0:	00 
      f1:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
      f8:	e8 b3 0e 00 00       	call   fb0 <printf>
      fd:	e9 0d ff ff ff       	jmp    f <main+0xf>
     102:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
	                continue;
	            }
	            else if(buf[0] == '#'){
	                //printf(2, "history prompt\n");
	                if(fork() == 0){
     108:	e8 4d 0d 00 00       	call   e5a <fork>
     10d:	85 c0                	test   %eax,%eax
     10f:	90                   	nop
     110:	75 85                	jne    97 <main+0x97>
	                  runcmd(parsecmd(commands[atoi(buf+1)]));
     112:	c7 04 24 81 19 00 00 	movl   $0x1981,(%esp)
     119:	e8 e2 0c 00 00       	call   e00 <atoi>
     11e:	8d 4c 24 10          	lea    0x10(%esp),%ecx
     122:	6b c0 64             	imul   $0x64,%eax,%eax
     125:	01 c8                	add    %ecx,%eax
     127:	89 04 24             	mov    %eax,(%esp)
     12a:	e8 91 0a 00 00       	call   bc0 <parsecmd>
     12f:	89 04 24             	mov    %eax,(%esp)
     132:	e8 f9 00 00 00       	call   230 <runcmd>
     137:	90                   	nop
	                continue;
	            }
	            
	            else if(buf[strlen(buf)-1] == '&'){
	              //printf(2, "background prompt\n");
	              if (fork() ==  0){
     138:	e8 1d 0d 00 00       	call   e5a <fork>
     13d:	85 c0                	test   %eax,%eax
     13f:	0f 85 ca fe ff ff    	jne    f <main+0xf>
	                //strcpy(commands[cmd_count], buf);
	                cmd_count++;
	                buf[strlen(buf)-1]=0;
     145:	c7 04 24 80 19 00 00 	movl   $0x1980,(%esp)
     14c:	e8 6f 0b 00 00       	call   cc0 <strlen>
	                runcmd(parsecmd(buf));
     151:	c7 04 24 80 19 00 00 	movl   $0x1980,(%esp)
	            else if(buf[strlen(buf)-1] == '&'){
	              //printf(2, "background prompt\n");
	              if (fork() ==  0){
	                //strcpy(commands[cmd_count], buf);
	                cmd_count++;
	                buf[strlen(buf)-1]=0;
     158:	c6 80 7f 19 00 00 00 	movb   $0x0,0x197f(%eax)
	                runcmd(parsecmd(buf));
     15f:	e8 5c 0a 00 00       	call   bc0 <parsecmd>
     164:	89 04 24             	mov    %eax,(%esp)
     167:	e8 c4 00 00 00       	call   230 <runcmd>
      	        }
    	        cmd_count++;
    	        wait();
	            }
	        }
	        exit();
     16c:	e8 f1 0c 00 00       	call   e62 <exit>
	              continue;
	            }
	            else{
    	          fork_answer = fork();
      	        if (fork_answer == 0){
      	          runcmd(parsecmd(buf));
     171:	c7 04 24 80 19 00 00 	movl   $0x1980,(%esp)
     178:	e8 43 0a 00 00       	call   bc0 <parsecmd>
     17d:	89 04 24             	mov    %eax,(%esp)
     180:	e8 ab 00 00 00       	call   230 <runcmd>
     185:	66 90                	xchg   %ax,%ax
     187:	66 90                	xchg   %ax,%ax
     189:	66 90                	xchg   %ax,%ax
     18b:	66 90                	xchg   %ax,%ax
     18d:	66 90                	xchg   %ax,%ax
     18f:	90                   	nop

00000190 <getcmd>:
	return 1;
}
     
int
getcmd(char *buf, int nbuf, int cmd_count)
{
     190:	55                   	push   %ebp
     191:	89 e5                	mov    %esp,%ebp
     193:	56                   	push   %esi
     194:	53                   	push   %ebx
     195:	83 ec 10             	sub    $0x10,%esp
  printf(2, "%d ", cmd_count);
     198:	8b 45 10             	mov    0x10(%ebp),%eax
	return 1;
}
     
int
getcmd(char *buf, int nbuf, int cmd_count)
{
     19b:	8b 5d 08             	mov    0x8(%ebp),%ebx
     19e:	8b 75 0c             	mov    0xc(%ebp),%esi
  printf(2, "%d ", cmd_count);
     1a1:	c7 44 24 04 18 13 00 	movl   $0x1318,0x4(%esp)
     1a8:	00 
     1a9:	89 44 24 08          	mov    %eax,0x8(%esp)
     1ad:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     1b4:	e8 f7 0d 00 00       	call   fb0 <printf>
  printf(1, "EZ$ ");
     1b9:	c7 44 24 04 1c 13 00 	movl   $0x131c,0x4(%esp)
     1c0:	00 
     1c1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     1c8:	e8 e3 0d 00 00       	call   fb0 <printf>
  memset(buf, 0, nbuf);
     1cd:	89 74 24 08          	mov    %esi,0x8(%esp)
     1d1:	89 1c 24             	mov    %ebx,(%esp)
     1d4:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     1db:	00 
     1dc:	e8 0f 0b 00 00       	call   cf0 <memset>
  gets(buf, nbuf);
     1e1:	89 74 24 04          	mov    %esi,0x4(%esp)
     1e5:	89 1c 24             	mov    %ebx,(%esp)
     1e8:	e8 63 0b 00 00       	call   d50 <gets>
  if(buf[0] == 0) // EOF
     1ed:	31 c0                	xor    %eax,%eax
     1ef:	80 3b 00             	cmpb   $0x0,(%ebx)
     1f2:	0f 94 c0             	sete   %al
    return -1;
  return 0;
}
     1f5:	83 c4 10             	add    $0x10,%esp
     1f8:	5b                   	pop    %ebx
{
  printf(2, "%d ", cmd_count);
  printf(1, "EZ$ ");
  memset(buf, 0, nbuf);
  gets(buf, nbuf);
  if(buf[0] == 0) // EOF
     1f9:	f7 d8                	neg    %eax
    return -1;
  return 0;
}
     1fb:	5e                   	pop    %esi
     1fc:	5d                   	pop    %ebp
     1fd:	c3                   	ret    
     1fe:	66 90                	xchg   %ax,%ax

00000200 <panic>:

void
panic(char *s)
{
     200:	55                   	push   %ebp
     201:	89 e5                	mov    %esp,%ebp
     203:	83 ec 18             	sub    $0x18,%esp
  printf(2, "%s\n", s);
     206:	8b 45 08             	mov    0x8(%ebp),%eax
     209:	c7 44 24 04 b6 13 00 	movl   $0x13b6,0x4(%esp)
     210:	00 
     211:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     218:	89 44 24 08          	mov    %eax,0x8(%esp)
     21c:	e8 8f 0d 00 00       	call   fb0 <printf>
  exit();
     221:	e8 3c 0c 00 00       	call   e62 <exit>
     226:	8d 76 00             	lea    0x0(%esi),%esi
     229:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000230 <runcmd>:
void panic(char*);
struct cmd *parsecmd(char*);

void
runcmd(struct cmd *cmd)
{
     230:	55                   	push   %ebp
     231:	89 e5                	mov    %esp,%ebp
     233:	53                   	push   %ebx
     234:	83 ec 24             	sub    $0x24,%esp
     237:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     23a:	85 db                	test   %ebx,%ebx
     23c:	74 5f                	je     29d <runcmd+0x6d>
    exit();

  switch(cmd->type){
     23e:	83 3b 05             	cmpl   $0x5,(%ebx)
     241:	0f 87 e7 00 00 00    	ja     32e <runcmd+0xfe>
     247:	8b 03                	mov    (%ebx),%eax
     249:	ff 24 85 c8 13 00 00 	jmp    *0x13c8(,%eax,4)
    runcmd(lcmd->right);
    break;

  case PIPE:
    pcmd = (struct pipecmd*)cmd;
    if(pipe(p) < 0)
     250:	8d 45 f0             	lea    -0x10(%ebp),%eax
     253:	89 04 24             	mov    %eax,(%esp)
     256:	e8 17 0c 00 00       	call   e72 <pipe>
     25b:	85 c0                	test   %eax,%eax
     25d:	0f 88 d7 00 00 00    	js     33a <runcmd+0x10a>
      panic("pipe");
    if(fork() == 0){
     263:	e8 f2 0b 00 00       	call   e5a <fork>
     268:	85 c0                	test   %eax,%eax
     26a:	0f 84 2e 01 00 00    	je     39e <runcmd+0x16e>
      dup(p[1]);
      close(p[0]);
      close(p[1]);
      runcmd(pcmd->left);
    }
    if(fork() == 0){
     270:	e8 e5 0b 00 00       	call   e5a <fork>
     275:	85 c0                	test   %eax,%eax
     277:	0f 84 e9 00 00 00    	je     366 <runcmd+0x136>
      dup(p[0]);
      close(p[0]);
      close(p[1]);
      runcmd(pcmd->right);
    }
    close(p[0]);
     27d:	8b 45 f0             	mov    -0x10(%ebp),%eax
     280:	89 04 24             	mov    %eax,(%esp)
     283:	e8 02 0c 00 00       	call   e8a <close>
    close(p[1]);
     288:	8b 45 f4             	mov    -0xc(%ebp),%eax
     28b:	89 04 24             	mov    %eax,(%esp)
     28e:	e8 f7 0b 00 00       	call   e8a <close>
    wait();
     293:	e8 d2 0b 00 00       	call   e6a <wait>
    wait();
     298:	e8 cd 0b 00 00       	call   e6a <wait>
     29d:	8d 76 00             	lea    0x0(%esi),%esi
  case REDIR:
    rcmd = (struct redircmd*)cmd;
    close(rcmd->fd);
    if(open(rcmd->file, rcmd->mode) < 0){
      printf(2, "open %s failed\n", rcmd->file);
      exit();
     2a0:	e8 bd 0b 00 00       	call   e62 <exit>
    wait();
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    if(fork() == 0)
     2a5:	e8 b0 0b 00 00       	call   e5a <fork>
     2aa:	85 c0                	test   %eax,%eax
     2ac:	75 ef                	jne    29d <runcmd+0x6d>
     2ae:	66 90                	xchg   %ax,%ax
     2b0:	eb 71                	jmp    323 <runcmd+0xf3>
  default:
    panic("runcmd");

  case EXEC:
    ecmd = (struct execcmd*)cmd;
    if(ecmd->argv[0] == 0)
     2b2:	8b 43 04             	mov    0x4(%ebx),%eax
     2b5:	85 c0                	test   %eax,%eax
     2b7:	74 e4                	je     29d <runcmd+0x6d>
      exit();
    exec(ecmd->argv[0], ecmd->argv);
     2b9:	8d 53 04             	lea    0x4(%ebx),%edx
     2bc:	89 54 24 04          	mov    %edx,0x4(%esp)
     2c0:	89 04 24             	mov    %eax,(%esp)
     2c3:	e8 d2 0b 00 00       	call   e9a <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
     2c8:	8b 43 04             	mov    0x4(%ebx),%eax
     2cb:	c7 44 24 04 28 13 00 	movl   $0x1328,0x4(%esp)
     2d2:	00 
     2d3:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     2da:	89 44 24 08          	mov    %eax,0x8(%esp)
     2de:	e8 cd 0c 00 00       	call   fb0 <printf>
    break;
     2e3:	eb b8                	jmp    29d <runcmd+0x6d>
    runcmd(rcmd->cmd);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    if(fork() == 0)
     2e5:	e8 70 0b 00 00       	call   e5a <fork>
     2ea:	85 c0                	test   %eax,%eax
     2ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     2f0:	74 31                	je     323 <runcmd+0xf3>
      runcmd(lcmd->left);
    wait();
     2f2:	e8 73 0b 00 00       	call   e6a <wait>
    runcmd(lcmd->right);
     2f7:	8b 43 08             	mov    0x8(%ebx),%eax
     2fa:	89 04 24             	mov    %eax,(%esp)
     2fd:	e8 2e ff ff ff       	call   230 <runcmd>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
    break;

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    close(rcmd->fd);
     302:	8b 43 14             	mov    0x14(%ebx),%eax
     305:	89 04 24             	mov    %eax,(%esp)
     308:	e8 7d 0b 00 00       	call   e8a <close>
    if(open(rcmd->file, rcmd->mode) < 0){
     30d:	8b 43 10             	mov    0x10(%ebx),%eax
     310:	89 44 24 04          	mov    %eax,0x4(%esp)
     314:	8b 43 08             	mov    0x8(%ebx),%eax
     317:	89 04 24             	mov    %eax,(%esp)
     31a:	e8 83 0b 00 00       	call   ea2 <open>
     31f:	85 c0                	test   %eax,%eax
     321:	78 23                	js     346 <runcmd+0x116>
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    if(fork() == 0)
      runcmd(bcmd->cmd);
     323:	8b 43 04             	mov    0x4(%ebx),%eax
     326:	89 04 24             	mov    %eax,(%esp)
     329:	e8 02 ff ff ff       	call   230 <runcmd>
  if(cmd == 0)
    exit();

  switch(cmd->type){
  default:
    panic("runcmd");
     32e:	c7 04 24 21 13 00 00 	movl   $0x1321,(%esp)
     335:	e8 c6 fe ff ff       	call   200 <panic>
    break;

  case PIPE:
    pcmd = (struct pipecmd*)cmd;
    if(pipe(p) < 0)
      panic("pipe");
     33a:	c7 04 24 48 13 00 00 	movl   $0x1348,(%esp)
     341:	e8 ba fe ff ff       	call   200 <panic>

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    close(rcmd->fd);
    if(open(rcmd->file, rcmd->mode) < 0){
      printf(2, "open %s failed\n", rcmd->file);
     346:	8b 43 08             	mov    0x8(%ebx),%eax
     349:	c7 44 24 04 38 13 00 	movl   $0x1338,0x4(%esp)
     350:	00 
     351:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     358:	89 44 24 08          	mov    %eax,0x8(%esp)
     35c:	e8 4f 0c 00 00       	call   fb0 <printf>
     361:	e9 37 ff ff ff       	jmp    29d <runcmd+0x6d>
      close(p[0]);
      close(p[1]);
      runcmd(pcmd->left);
    }
    if(fork() == 0){
      close(0);
     366:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     36d:	e8 18 0b 00 00       	call   e8a <close>
      dup(p[0]);
     372:	8b 45 f0             	mov    -0x10(%ebp),%eax
     375:	89 04 24             	mov    %eax,(%esp)
     378:	e8 5d 0b 00 00       	call   eda <dup>
      close(p[0]);
     37d:	8b 45 f0             	mov    -0x10(%ebp),%eax
     380:	89 04 24             	mov    %eax,(%esp)
     383:	e8 02 0b 00 00       	call   e8a <close>
      close(p[1]);
     388:	8b 45 f4             	mov    -0xc(%ebp),%eax
     38b:	89 04 24             	mov    %eax,(%esp)
     38e:	e8 f7 0a 00 00       	call   e8a <close>
      runcmd(pcmd->right);
     393:	8b 43 08             	mov    0x8(%ebx),%eax
     396:	89 04 24             	mov    %eax,(%esp)
     399:	e8 92 fe ff ff       	call   230 <runcmd>
  case PIPE:
    pcmd = (struct pipecmd*)cmd;
    if(pipe(p) < 0)
      panic("pipe");
    if(fork() == 0){
      close(1);
     39e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     3a5:	e8 e0 0a 00 00       	call   e8a <close>
      dup(p[1]);
     3aa:	8b 45 f4             	mov    -0xc(%ebp),%eax
     3ad:	89 04 24             	mov    %eax,(%esp)
     3b0:	e8 25 0b 00 00       	call   eda <dup>
      close(p[0]);
     3b5:	8b 45 f0             	mov    -0x10(%ebp),%eax
     3b8:	89 04 24             	mov    %eax,(%esp)
     3bb:	e8 ca 0a 00 00       	call   e8a <close>
      close(p[1]);
     3c0:	8b 45 f4             	mov    -0xc(%ebp),%eax
     3c3:	89 04 24             	mov    %eax,(%esp)
     3c6:	e8 bf 0a 00 00       	call   e8a <close>
      runcmd(pcmd->left);
     3cb:	8b 43 04             	mov    0x4(%ebx),%eax
     3ce:	89 04 24             	mov    %eax,(%esp)
     3d1:	e8 5a fe ff ff       	call   230 <runcmd>
     3d6:	8d 76 00             	lea    0x0(%esi),%esi
     3d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003e0 <execcmd>:
  exit();
}

struct cmd*
execcmd(void)
{
     3e0:	55                   	push   %ebp
     3e1:	89 e5                	mov    %esp,%ebp
     3e3:	53                   	push   %ebx
     3e4:	83 ec 14             	sub    $0x14,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     3e7:	c7 04 24 54 00 00 00 	movl   $0x54,(%esp)
     3ee:	e8 3d 0e 00 00       	call   1230 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     3f3:	c7 44 24 08 54 00 00 	movl   $0x54,0x8(%esp)
     3fa:	00 
     3fb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     402:	00 
struct cmd*
execcmd(void)
{
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     403:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     405:	89 04 24             	mov    %eax,(%esp)
     408:	e8 e3 08 00 00       	call   cf0 <memset>
  cmd->type = EXEC;
  return (struct cmd*)cmd;
}
     40d:	89 d8                	mov    %ebx,%eax
{
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = EXEC;
     40f:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
     415:	83 c4 14             	add    $0x14,%esp
     418:	5b                   	pop    %ebx
     419:	5d                   	pop    %ebp
     41a:	c3                   	ret    
     41b:	90                   	nop
     41c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000420 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
     420:	55                   	push   %ebp
     421:	89 e5                	mov    %esp,%ebp
     423:	53                   	push   %ebx
     424:	83 ec 14             	sub    $0x14,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     427:	c7 04 24 18 00 00 00 	movl   $0x18,(%esp)
     42e:	e8 fd 0d 00 00       	call   1230 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     433:	c7 44 24 08 18 00 00 	movl   $0x18,0x8(%esp)
     43a:	00 
     43b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     442:	00 
     443:	89 04 24             	mov    %eax,(%esp)
struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     446:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     448:	e8 a3 08 00 00       	call   cf0 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
     44d:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = REDIR;
     450:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
     456:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
     459:	8b 45 0c             	mov    0xc(%ebp),%eax
     45c:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
     45f:	8b 45 10             	mov    0x10(%ebp),%eax
     462:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
     465:	8b 45 14             	mov    0x14(%ebp),%eax
     468:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
     46b:	8b 45 18             	mov    0x18(%ebp),%eax
     46e:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
     471:	83 c4 14             	add    $0x14,%esp
     474:	89 d8                	mov    %ebx,%eax
     476:	5b                   	pop    %ebx
     477:	5d                   	pop    %ebp
     478:	c3                   	ret    
     479:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000480 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
     480:	55                   	push   %ebp
     481:	89 e5                	mov    %esp,%ebp
     483:	53                   	push   %ebx
     484:	83 ec 14             	sub    $0x14,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     487:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
     48e:	e8 9d 0d 00 00       	call   1230 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     493:	c7 44 24 08 0c 00 00 	movl   $0xc,0x8(%esp)
     49a:	00 
     49b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     4a2:	00 
     4a3:	89 04 24             	mov    %eax,(%esp)
struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     4a6:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     4a8:	e8 43 08 00 00       	call   cf0 <memset>
  cmd->type = PIPE;
  cmd->left = left;
     4ad:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = PIPE;
     4b0:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
     4b6:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     4b9:	8b 45 0c             	mov    0xc(%ebp),%eax
     4bc:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     4bf:	83 c4 14             	add    $0x14,%esp
     4c2:	89 d8                	mov    %ebx,%eax
     4c4:	5b                   	pop    %ebx
     4c5:	5d                   	pop    %ebp
     4c6:	c3                   	ret    
     4c7:	89 f6                	mov    %esi,%esi
     4c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004d0 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
     4d0:	55                   	push   %ebp
     4d1:	89 e5                	mov    %esp,%ebp
     4d3:	53                   	push   %ebx
     4d4:	83 ec 14             	sub    $0x14,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     4d7:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
     4de:	e8 4d 0d 00 00       	call   1230 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     4e3:	c7 44 24 08 0c 00 00 	movl   $0xc,0x8(%esp)
     4ea:	00 
     4eb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     4f2:	00 
     4f3:	89 04 24             	mov    %eax,(%esp)
struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     4f6:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     4f8:	e8 f3 07 00 00       	call   cf0 <memset>
  cmd->type = LIST;
  cmd->left = left;
     4fd:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = LIST;
     500:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
     506:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     509:	8b 45 0c             	mov    0xc(%ebp),%eax
     50c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     50f:	83 c4 14             	add    $0x14,%esp
     512:	89 d8                	mov    %ebx,%eax
     514:	5b                   	pop    %ebx
     515:	5d                   	pop    %ebp
     516:	c3                   	ret    
     517:	89 f6                	mov    %esi,%esi
     519:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000520 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
     520:	55                   	push   %ebp
     521:	89 e5                	mov    %esp,%ebp
     523:	53                   	push   %ebx
     524:	83 ec 14             	sub    $0x14,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     527:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
     52e:	e8 fd 0c 00 00       	call   1230 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     533:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
     53a:	00 
     53b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     542:	00 
     543:	89 04 24             	mov    %eax,(%esp)
struct cmd*
backcmd(struct cmd *subcmd)
{
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     546:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     548:	e8 a3 07 00 00       	call   cf0 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
     54d:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = BACK;
     550:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
     556:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
     559:	83 c4 14             	add    $0x14,%esp
     55c:	89 d8                	mov    %ebx,%eax
     55e:	5b                   	pop    %ebx
     55f:	5d                   	pop    %ebp
     560:	c3                   	ret    
     561:	eb 0d                	jmp    570 <gettoken>
     563:	90                   	nop
     564:	90                   	nop
     565:	90                   	nop
     566:	90                   	nop
     567:	90                   	nop
     568:	90                   	nop
     569:	90                   	nop
     56a:	90                   	nop
     56b:	90                   	nop
     56c:	90                   	nop
     56d:	90                   	nop
     56e:	90                   	nop
     56f:	90                   	nop

00000570 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     570:	55                   	push   %ebp
     571:	89 e5                	mov    %esp,%ebp
     573:	57                   	push   %edi
     574:	56                   	push   %esi
     575:	53                   	push   %ebx
     576:	83 ec 1c             	sub    $0x1c,%esp
  char *s;
  int ret;

  s = *ps;
     579:	8b 45 08             	mov    0x8(%ebp),%eax
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     57c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     57f:	8b 75 10             	mov    0x10(%ebp),%esi
  char *s;
  int ret;

  s = *ps;
     582:	8b 38                	mov    (%eax),%edi
  while(s < es && strchr(whitespace, *s))
     584:	39 df                	cmp    %ebx,%edi
     586:	72 0f                	jb     597 <gettoken+0x27>
     588:	eb 24                	jmp    5ae <gettoken+0x3e>
     58a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    s++;
     590:	83 c7 01             	add    $0x1,%edi
{
  char *s;
  int ret;

  s = *ps;
  while(s < es && strchr(whitespace, *s))
     593:	39 df                	cmp    %ebx,%edi
     595:	74 17                	je     5ae <gettoken+0x3e>
     597:	0f be 07             	movsbl (%edi),%eax
     59a:	c7 04 24 74 19 00 00 	movl   $0x1974,(%esp)
     5a1:	89 44 24 04          	mov    %eax,0x4(%esp)
     5a5:	e8 66 07 00 00       	call   d10 <strchr>
     5aa:	85 c0                	test   %eax,%eax
     5ac:	75 e2                	jne    590 <gettoken+0x20>
    s++;
  if(q)
     5ae:	85 f6                	test   %esi,%esi
     5b0:	74 02                	je     5b4 <gettoken+0x44>
    *q = s;
     5b2:	89 3e                	mov    %edi,(%esi)
  ret = *s;
     5b4:	0f b6 0f             	movzbl (%edi),%ecx
     5b7:	0f be f1             	movsbl %cl,%esi
  switch(*s){
     5ba:	80 f9 29             	cmp    $0x29,%cl
  s = *ps;
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
     5bd:	89 f0                	mov    %esi,%eax
  switch(*s){
     5bf:	7f 4f                	jg     610 <gettoken+0xa0>
     5c1:	80 f9 28             	cmp    $0x28,%cl
     5c4:	7d 55                	jge    61b <gettoken+0xab>
     5c6:	84 c9                	test   %cl,%cl
     5c8:	0f 85 ca 00 00 00    	jne    698 <gettoken+0x128>
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     5ce:	8b 45 14             	mov    0x14(%ebp),%eax
     5d1:	85 c0                	test   %eax,%eax
     5d3:	74 05                	je     5da <gettoken+0x6a>
    *eq = s;
     5d5:	8b 45 14             	mov    0x14(%ebp),%eax
     5d8:	89 38                	mov    %edi,(%eax)

  while(s < es && strchr(whitespace, *s))
     5da:	39 df                	cmp    %ebx,%edi
     5dc:	72 09                	jb     5e7 <gettoken+0x77>
     5de:	eb 1e                	jmp    5fe <gettoken+0x8e>
    s++;
     5e0:	83 c7 01             	add    $0x1,%edi
    break;
  }
  if(eq)
    *eq = s;

  while(s < es && strchr(whitespace, *s))
     5e3:	39 df                	cmp    %ebx,%edi
     5e5:	74 17                	je     5fe <gettoken+0x8e>
     5e7:	0f be 07             	movsbl (%edi),%eax
     5ea:	c7 04 24 74 19 00 00 	movl   $0x1974,(%esp)
     5f1:	89 44 24 04          	mov    %eax,0x4(%esp)
     5f5:	e8 16 07 00 00       	call   d10 <strchr>
     5fa:	85 c0                	test   %eax,%eax
     5fc:	75 e2                	jne    5e0 <gettoken+0x70>
    s++;
  *ps = s;
     5fe:	8b 45 08             	mov    0x8(%ebp),%eax
     601:	89 38                	mov    %edi,(%eax)
  return ret;
}
     603:	83 c4 1c             	add    $0x1c,%esp
     606:	89 f0                	mov    %esi,%eax
     608:	5b                   	pop    %ebx
     609:	5e                   	pop    %esi
     60a:	5f                   	pop    %edi
     60b:	5d                   	pop    %ebp
     60c:	c3                   	ret    
     60d:	8d 76 00             	lea    0x0(%esi),%esi
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     610:	80 f9 3e             	cmp    $0x3e,%cl
     613:	75 0b                	jne    620 <gettoken+0xb0>
  case '<':
    s++;
    break;
  case '>':
    s++;
    if(*s == '>'){
     615:	80 7f 01 3e          	cmpb   $0x3e,0x1(%edi)
     619:	74 6d                	je     688 <gettoken+0x118>
  case '&':
  case '<':
    s++;
    break;
  case '>':
    s++;
     61b:	83 c7 01             	add    $0x1,%edi
     61e:	eb ae                	jmp    5ce <gettoken+0x5e>
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     620:	7f 56                	jg     678 <gettoken+0x108>
     622:	83 e9 3b             	sub    $0x3b,%ecx
     625:	80 f9 01             	cmp    $0x1,%cl
     628:	76 f1                	jbe    61b <gettoken+0xab>
      s++;
    }
    break;
  default:
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     62a:	39 fb                	cmp    %edi,%ebx
     62c:	77 2b                	ja     659 <gettoken+0xe9>
     62e:	66 90                	xchg   %ax,%ax
     630:	eb 3b                	jmp    66d <gettoken+0xfd>
     632:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     638:	0f be 07             	movsbl (%edi),%eax
     63b:	c7 04 24 6c 19 00 00 	movl   $0x196c,(%esp)
     642:	89 44 24 04          	mov    %eax,0x4(%esp)
     646:	e8 c5 06 00 00       	call   d10 <strchr>
     64b:	85 c0                	test   %eax,%eax
     64d:	75 1e                	jne    66d <gettoken+0xfd>
      s++;
     64f:	83 c7 01             	add    $0x1,%edi
      s++;
    }
    break;
  default:
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     652:	39 df                	cmp    %ebx,%edi
     654:	74 17                	je     66d <gettoken+0xfd>
     656:	0f be 07             	movsbl (%edi),%eax
     659:	89 44 24 04          	mov    %eax,0x4(%esp)
     65d:	c7 04 24 74 19 00 00 	movl   $0x1974,(%esp)
     664:	e8 a7 06 00 00       	call   d10 <strchr>
     669:	85 c0                	test   %eax,%eax
     66b:	74 cb                	je     638 <gettoken+0xc8>
      ret = '+';
      s++;
    }
    break;
  default:
    ret = 'a';
     66d:	be 61 00 00 00       	mov    $0x61,%esi
     672:	e9 57 ff ff ff       	jmp    5ce <gettoken+0x5e>
     677:	90                   	nop
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     678:	80 f9 7c             	cmp    $0x7c,%cl
     67b:	74 9e                	je     61b <gettoken+0xab>
     67d:	8d 76 00             	lea    0x0(%esi),%esi
     680:	eb a8                	jmp    62a <gettoken+0xba>
     682:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    break;
  case '>':
    s++;
    if(*s == '>'){
      ret = '+';
      s++;
     688:	83 c7 02             	add    $0x2,%edi
    s++;
    break;
  case '>':
    s++;
    if(*s == '>'){
      ret = '+';
     68b:	be 2b 00 00 00       	mov    $0x2b,%esi
     690:	e9 39 ff ff ff       	jmp    5ce <gettoken+0x5e>
     695:	8d 76 00             	lea    0x0(%esi),%esi
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     698:	80 f9 26             	cmp    $0x26,%cl
     69b:	75 8d                	jne    62a <gettoken+0xba>
     69d:	e9 79 ff ff ff       	jmp    61b <gettoken+0xab>
     6a2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     6a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000006b0 <peek>:
  return ret;
}

int
peek(char **ps, char *es, char *toks)
{
     6b0:	55                   	push   %ebp
     6b1:	89 e5                	mov    %esp,%ebp
     6b3:	57                   	push   %edi
     6b4:	56                   	push   %esi
     6b5:	53                   	push   %ebx
     6b6:	83 ec 1c             	sub    $0x1c,%esp
     6b9:	8b 7d 08             	mov    0x8(%ebp),%edi
     6bc:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
     6bf:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
     6c1:	39 f3                	cmp    %esi,%ebx
     6c3:	72 0a                	jb     6cf <peek+0x1f>
     6c5:	eb 1f                	jmp    6e6 <peek+0x36>
     6c7:	90                   	nop
    s++;
     6c8:	83 c3 01             	add    $0x1,%ebx
peek(char **ps, char *es, char *toks)
{
  char *s;

  s = *ps;
  while(s < es && strchr(whitespace, *s))
     6cb:	39 f3                	cmp    %esi,%ebx
     6cd:	74 17                	je     6e6 <peek+0x36>
     6cf:	0f be 03             	movsbl (%ebx),%eax
     6d2:	c7 04 24 74 19 00 00 	movl   $0x1974,(%esp)
     6d9:	89 44 24 04          	mov    %eax,0x4(%esp)
     6dd:	e8 2e 06 00 00       	call   d10 <strchr>
     6e2:	85 c0                	test   %eax,%eax
     6e4:	75 e2                	jne    6c8 <peek+0x18>
    s++;
  *ps = s;
     6e6:	89 1f                	mov    %ebx,(%edi)
  return *s && strchr(toks, *s);
     6e8:	0f be 13             	movsbl (%ebx),%edx
     6eb:	31 c0                	xor    %eax,%eax
     6ed:	84 d2                	test   %dl,%dl
     6ef:	74 17                	je     708 <peek+0x58>
     6f1:	8b 45 10             	mov    0x10(%ebp),%eax
     6f4:	89 54 24 04          	mov    %edx,0x4(%esp)
     6f8:	89 04 24             	mov    %eax,(%esp)
     6fb:	e8 10 06 00 00       	call   d10 <strchr>
     700:	85 c0                	test   %eax,%eax
     702:	0f 95 c0             	setne  %al
     705:	0f b6 c0             	movzbl %al,%eax
}
     708:	83 c4 1c             	add    $0x1c,%esp
     70b:	5b                   	pop    %ebx
     70c:	5e                   	pop    %esi
     70d:	5f                   	pop    %edi
     70e:	5d                   	pop    %ebp
     70f:	c3                   	ret    

00000710 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
     710:	55                   	push   %ebp
     711:	89 e5                	mov    %esp,%ebp
     713:	57                   	push   %edi
     714:	56                   	push   %esi
     715:	53                   	push   %ebx
     716:	83 ec 3c             	sub    $0x3c,%esp
     719:	8b 75 0c             	mov    0xc(%ebp),%esi
     71c:	8b 5d 10             	mov    0x10(%ebp),%ebx
     71f:	90                   	nop
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
     720:	c7 44 24 08 6a 13 00 	movl   $0x136a,0x8(%esp)
     727:	00 
     728:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     72c:	89 34 24             	mov    %esi,(%esp)
     72f:	e8 7c ff ff ff       	call   6b0 <peek>
     734:	85 c0                	test   %eax,%eax
     736:	0f 84 9c 00 00 00    	je     7d8 <parseredirs+0xc8>
    tok = gettoken(ps, es, 0, 0);
     73c:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
     743:	00 
     744:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     74b:	00 
     74c:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     750:	89 34 24             	mov    %esi,(%esp)
     753:	e8 18 fe ff ff       	call   570 <gettoken>
    if(gettoken(ps, es, &q, &eq) != 'a')
     758:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     75c:	89 34 24             	mov    %esi,(%esp)
{
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
    tok = gettoken(ps, es, 0, 0);
     75f:	89 c7                	mov    %eax,%edi
    if(gettoken(ps, es, &q, &eq) != 'a')
     761:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     764:	89 44 24 0c          	mov    %eax,0xc(%esp)
     768:	8d 45 e0             	lea    -0x20(%ebp),%eax
     76b:	89 44 24 08          	mov    %eax,0x8(%esp)
     76f:	e8 fc fd ff ff       	call   570 <gettoken>
     774:	83 f8 61             	cmp    $0x61,%eax
     777:	75 6a                	jne    7e3 <parseredirs+0xd3>
      panic("missing file for redirection");
    switch(tok){
     779:	83 ff 3c             	cmp    $0x3c,%edi
     77c:	74 42                	je     7c0 <parseredirs+0xb0>
     77e:	83 ff 3e             	cmp    $0x3e,%edi
     781:	74 05                	je     788 <parseredirs+0x78>
     783:	83 ff 2b             	cmp    $0x2b,%edi
     786:	75 98                	jne    720 <parseredirs+0x10>
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     788:	c7 44 24 10 01 00 00 	movl   $0x1,0x10(%esp)
     78f:	00 
     790:	c7 44 24 0c 01 02 00 	movl   $0x201,0xc(%esp)
     797:	00 
     798:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     79b:	89 44 24 08          	mov    %eax,0x8(%esp)
     79f:	8b 45 e0             	mov    -0x20(%ebp),%eax
     7a2:	89 44 24 04          	mov    %eax,0x4(%esp)
     7a6:	8b 45 08             	mov    0x8(%ebp),%eax
     7a9:	89 04 24             	mov    %eax,(%esp)
     7ac:	e8 6f fc ff ff       	call   420 <redircmd>
     7b1:	89 45 08             	mov    %eax,0x8(%ebp)
      break;
     7b4:	e9 67 ff ff ff       	jmp    720 <parseredirs+0x10>
     7b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    tok = gettoken(ps, es, 0, 0);
    if(gettoken(ps, es, &q, &eq) != 'a')
      panic("missing file for redirection");
    switch(tok){
    case '<':
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     7c0:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
     7c7:	00 
     7c8:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
     7cf:	00 
     7d0:	eb c6                	jmp    798 <parseredirs+0x88>
     7d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    }
  }
  return cmd;
}
     7d8:	8b 45 08             	mov    0x8(%ebp),%eax
     7db:	83 c4 3c             	add    $0x3c,%esp
     7de:	5b                   	pop    %ebx
     7df:	5e                   	pop    %esi
     7e0:	5f                   	pop    %edi
     7e1:	5d                   	pop    %ebp
     7e2:	c3                   	ret    
  char *q, *eq;

  while(peek(ps, es, "<>")){
    tok = gettoken(ps, es, 0, 0);
    if(gettoken(ps, es, &q, &eq) != 'a')
      panic("missing file for redirection");
     7e3:	c7 04 24 4d 13 00 00 	movl   $0x134d,(%esp)
     7ea:	e8 11 fa ff ff       	call   200 <panic>
     7ef:	90                   	nop

000007f0 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
     7f0:	55                   	push   %ebp
     7f1:	89 e5                	mov    %esp,%ebp
     7f3:	57                   	push   %edi
     7f4:	56                   	push   %esi
     7f5:	53                   	push   %ebx
     7f6:	83 ec 3c             	sub    $0x3c,%esp
     7f9:	8b 75 08             	mov    0x8(%ebp),%esi
     7fc:	8b 7d 0c             	mov    0xc(%ebp),%edi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
     7ff:	c7 44 24 08 6d 13 00 	movl   $0x136d,0x8(%esp)
     806:	00 
     807:	89 34 24             	mov    %esi,(%esp)
     80a:	89 7c 24 04          	mov    %edi,0x4(%esp)
     80e:	e8 9d fe ff ff       	call   6b0 <peek>
     813:	85 c0                	test   %eax,%eax
     815:	0f 85 a5 00 00 00    	jne    8c0 <parseexec+0xd0>
    return parseblock(ps, es);

  ret = execcmd();
     81b:	e8 c0 fb ff ff       	call   3e0 <execcmd>
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     820:	89 7c 24 08          	mov    %edi,0x8(%esp)
     824:	89 74 24 04          	mov    %esi,0x4(%esp)
     828:	89 04 24             	mov    %eax,(%esp)
  struct cmd *ret;

  if(peek(ps, es, "("))
    return parseblock(ps, es);

  ret = execcmd();
     82b:	89 c3                	mov    %eax,%ebx
     82d:	89 45 cc             	mov    %eax,-0x34(%ebp)
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     830:	e8 db fe ff ff       	call   710 <parseredirs>
    return parseblock(ps, es);

  ret = execcmd();
  cmd = (struct execcmd*)ret;

  argc = 0;
     835:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
  ret = parseredirs(ret, ps, es);
     83c:	89 45 d0             	mov    %eax,-0x30(%ebp)
  while(!peek(ps, es, "|)&;")){
     83f:	eb 1d                	jmp    85e <parseexec+0x6e>
     841:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
     848:	8b 45 d0             	mov    -0x30(%ebp),%eax
     84b:	89 7c 24 08          	mov    %edi,0x8(%esp)
     84f:	89 74 24 04          	mov    %esi,0x4(%esp)
     853:	89 04 24             	mov    %eax,(%esp)
     856:	e8 b5 fe ff ff       	call   710 <parseredirs>
     85b:	89 45 d0             	mov    %eax,-0x30(%ebp)
  ret = execcmd();
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
  while(!peek(ps, es, "|)&;")){
     85e:	c7 44 24 08 84 13 00 	movl   $0x1384,0x8(%esp)
     865:	00 
     866:	89 7c 24 04          	mov    %edi,0x4(%esp)
     86a:	89 34 24             	mov    %esi,(%esp)
     86d:	e8 3e fe ff ff       	call   6b0 <peek>
     872:	85 c0                	test   %eax,%eax
     874:	75 62                	jne    8d8 <parseexec+0xe8>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
     876:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     879:	89 44 24 0c          	mov    %eax,0xc(%esp)
     87d:	8d 45 e0             	lea    -0x20(%ebp),%eax
     880:	89 44 24 08          	mov    %eax,0x8(%esp)
     884:	89 7c 24 04          	mov    %edi,0x4(%esp)
     888:	89 34 24             	mov    %esi,(%esp)
     88b:	e8 e0 fc ff ff       	call   570 <gettoken>
     890:	85 c0                	test   %eax,%eax
     892:	74 44                	je     8d8 <parseexec+0xe8>
      break;
    if(tok != 'a')
     894:	83 f8 61             	cmp    $0x61,%eax
     897:	75 61                	jne    8fa <parseexec+0x10a>
      panic("syntax");
    cmd->argv[argc] = q;
     899:	8b 45 e0             	mov    -0x20(%ebp),%eax
     89c:	83 c3 04             	add    $0x4,%ebx
    cmd->eargv[argc] = eq;
    argc++;
     89f:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
      break;
    if(tok != 'a')
      panic("syntax");
    cmd->argv[argc] = q;
     8a3:	89 03                	mov    %eax,(%ebx)
    cmd->eargv[argc] = eq;
     8a5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     8a8:	89 43 28             	mov    %eax,0x28(%ebx)
    argc++;
    if(argc >= MAXARGS)
     8ab:	83 7d d4 0a          	cmpl   $0xa,-0x2c(%ebp)
     8af:	75 97                	jne    848 <parseexec+0x58>
      panic("too many args");
     8b1:	c7 04 24 76 13 00 00 	movl   $0x1376,(%esp)
     8b8:	e8 43 f9 ff ff       	call   200 <panic>
     8bd:	8d 76 00             	lea    0x0(%esi),%esi
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
    return parseblock(ps, es);
     8c0:	89 7c 24 04          	mov    %edi,0x4(%esp)
     8c4:	89 34 24             	mov    %esi,(%esp)
     8c7:	e8 84 01 00 00       	call   a50 <parseblock>
    ret = parseredirs(ret, ps, es);
  }
  cmd->argv[argc] = 0;
  cmd->eargv[argc] = 0;
  return ret;
}
     8cc:	83 c4 3c             	add    $0x3c,%esp
     8cf:	5b                   	pop    %ebx
     8d0:	5e                   	pop    %esi
     8d1:	5f                   	pop    %edi
     8d2:	5d                   	pop    %ebp
     8d3:	c3                   	ret    
     8d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     8d8:	8b 45 cc             	mov    -0x34(%ebp),%eax
     8db:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     8de:	8d 04 90             	lea    (%eax,%edx,4),%eax
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
  }
  cmd->argv[argc] = 0;
     8e1:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  cmd->eargv[argc] = 0;
     8e8:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
  return ret;
     8ef:	8b 45 d0             	mov    -0x30(%ebp),%eax
}
     8f2:	83 c4 3c             	add    $0x3c,%esp
     8f5:	5b                   	pop    %ebx
     8f6:	5e                   	pop    %esi
     8f7:	5f                   	pop    %edi
     8f8:	5d                   	pop    %ebp
     8f9:	c3                   	ret    
  ret = parseredirs(ret, ps, es);
  while(!peek(ps, es, "|)&;")){
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
      break;
    if(tok != 'a')
      panic("syntax");
     8fa:	c7 04 24 6f 13 00 00 	movl   $0x136f,(%esp)
     901:	e8 fa f8 ff ff       	call   200 <panic>
     906:	8d 76 00             	lea    0x0(%esi),%esi
     909:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000910 <parsepipe>:
  return cmd;
}

struct cmd*
parsepipe(char **ps, char *es)
{
     910:	55                   	push   %ebp
     911:	89 e5                	mov    %esp,%ebp
     913:	57                   	push   %edi
     914:	56                   	push   %esi
     915:	53                   	push   %ebx
     916:	83 ec 1c             	sub    $0x1c,%esp
     919:	8b 5d 08             	mov    0x8(%ebp),%ebx
     91c:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct cmd *cmd;

  cmd = parseexec(ps, es);
     91f:	89 1c 24             	mov    %ebx,(%esp)
     922:	89 74 24 04          	mov    %esi,0x4(%esp)
     926:	e8 c5 fe ff ff       	call   7f0 <parseexec>
  if(peek(ps, es, "|")){
     92b:	c7 44 24 08 89 13 00 	movl   $0x1389,0x8(%esp)
     932:	00 
     933:	89 74 24 04          	mov    %esi,0x4(%esp)
     937:	89 1c 24             	mov    %ebx,(%esp)
struct cmd*
parsepipe(char **ps, char *es)
{
  struct cmd *cmd;

  cmd = parseexec(ps, es);
     93a:	89 c7                	mov    %eax,%edi
  if(peek(ps, es, "|")){
     93c:	e8 6f fd ff ff       	call   6b0 <peek>
     941:	85 c0                	test   %eax,%eax
     943:	75 0b                	jne    950 <parsepipe+0x40>
    gettoken(ps, es, 0, 0);
    cmd = pipecmd(cmd, parsepipe(ps, es));
  }
  return cmd;
}
     945:	83 c4 1c             	add    $0x1c,%esp
     948:	89 f8                	mov    %edi,%eax
     94a:	5b                   	pop    %ebx
     94b:	5e                   	pop    %esi
     94c:	5f                   	pop    %edi
     94d:	5d                   	pop    %ebp
     94e:	c3                   	ret    
     94f:	90                   	nop
{
  struct cmd *cmd;

  cmd = parseexec(ps, es);
  if(peek(ps, es, "|")){
    gettoken(ps, es, 0, 0);
     950:	89 74 24 04          	mov    %esi,0x4(%esp)
     954:	89 1c 24             	mov    %ebx,(%esp)
     957:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
     95e:	00 
     95f:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     966:	00 
     967:	e8 04 fc ff ff       	call   570 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
     96c:	89 74 24 04          	mov    %esi,0x4(%esp)
     970:	89 1c 24             	mov    %ebx,(%esp)
     973:	e8 98 ff ff ff       	call   910 <parsepipe>
     978:	89 7d 08             	mov    %edi,0x8(%ebp)
     97b:	89 45 0c             	mov    %eax,0xc(%ebp)
  }
  return cmd;
}
     97e:	83 c4 1c             	add    $0x1c,%esp
     981:	5b                   	pop    %ebx
     982:	5e                   	pop    %esi
     983:	5f                   	pop    %edi
     984:	5d                   	pop    %ebp
  struct cmd *cmd;

  cmd = parseexec(ps, es);
  if(peek(ps, es, "|")){
    gettoken(ps, es, 0, 0);
    cmd = pipecmd(cmd, parsepipe(ps, es));
     985:	e9 f6 fa ff ff       	jmp    480 <pipecmd>
     98a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000990 <parseline>:
  return cmd;
}

struct cmd*
parseline(char **ps, char *es)
{
     990:	55                   	push   %ebp
     991:	89 e5                	mov    %esp,%ebp
     993:	57                   	push   %edi
     994:	56                   	push   %esi
     995:	53                   	push   %ebx
     996:	83 ec 1c             	sub    $0x1c,%esp
     999:	8b 5d 08             	mov    0x8(%ebp),%ebx
     99c:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct cmd *cmd;

  cmd = parsepipe(ps, es);
     99f:	89 1c 24             	mov    %ebx,(%esp)
     9a2:	89 74 24 04          	mov    %esi,0x4(%esp)
     9a6:	e8 65 ff ff ff       	call   910 <parsepipe>
     9ab:	89 c7                	mov    %eax,%edi
  while(peek(ps, es, "&")){
     9ad:	eb 27                	jmp    9d6 <parseline+0x46>
     9af:	90                   	nop
    gettoken(ps, es, 0, 0);
     9b0:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
     9b7:	00 
     9b8:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     9bf:	00 
     9c0:	89 74 24 04          	mov    %esi,0x4(%esp)
     9c4:	89 1c 24             	mov    %ebx,(%esp)
     9c7:	e8 a4 fb ff ff       	call   570 <gettoken>
    cmd = backcmd(cmd);
     9cc:	89 3c 24             	mov    %edi,(%esp)
     9cf:	e8 4c fb ff ff       	call   520 <backcmd>
     9d4:	89 c7                	mov    %eax,%edi
parseline(char **ps, char *es)
{
  struct cmd *cmd;

  cmd = parsepipe(ps, es);
  while(peek(ps, es, "&")){
     9d6:	c7 44 24 08 8b 13 00 	movl   $0x138b,0x8(%esp)
     9dd:	00 
     9de:	89 74 24 04          	mov    %esi,0x4(%esp)
     9e2:	89 1c 24             	mov    %ebx,(%esp)
     9e5:	e8 c6 fc ff ff       	call   6b0 <peek>
     9ea:	85 c0                	test   %eax,%eax
     9ec:	75 c2                	jne    9b0 <parseline+0x20>
    gettoken(ps, es, 0, 0);
    cmd = backcmd(cmd);
  }
  if(peek(ps, es, ";")){
     9ee:	c7 44 24 08 87 13 00 	movl   $0x1387,0x8(%esp)
     9f5:	00 
     9f6:	89 74 24 04          	mov    %esi,0x4(%esp)
     9fa:	89 1c 24             	mov    %ebx,(%esp)
     9fd:	e8 ae fc ff ff       	call   6b0 <peek>
     a02:	85 c0                	test   %eax,%eax
     a04:	75 0a                	jne    a10 <parseline+0x80>
    gettoken(ps, es, 0, 0);
    cmd = listcmd(cmd, parseline(ps, es));
  }
  return cmd;
}
     a06:	83 c4 1c             	add    $0x1c,%esp
     a09:	89 f8                	mov    %edi,%eax
     a0b:	5b                   	pop    %ebx
     a0c:	5e                   	pop    %esi
     a0d:	5f                   	pop    %edi
     a0e:	5d                   	pop    %ebp
     a0f:	c3                   	ret    
  while(peek(ps, es, "&")){
    gettoken(ps, es, 0, 0);
    cmd = backcmd(cmd);
  }
  if(peek(ps, es, ";")){
    gettoken(ps, es, 0, 0);
     a10:	89 74 24 04          	mov    %esi,0x4(%esp)
     a14:	89 1c 24             	mov    %ebx,(%esp)
     a17:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
     a1e:	00 
     a1f:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     a26:	00 
     a27:	e8 44 fb ff ff       	call   570 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
     a2c:	89 74 24 04          	mov    %esi,0x4(%esp)
     a30:	89 1c 24             	mov    %ebx,(%esp)
     a33:	e8 58 ff ff ff       	call   990 <parseline>
     a38:	89 7d 08             	mov    %edi,0x8(%ebp)
     a3b:	89 45 0c             	mov    %eax,0xc(%ebp)
  }
  return cmd;
}
     a3e:	83 c4 1c             	add    $0x1c,%esp
     a41:	5b                   	pop    %ebx
     a42:	5e                   	pop    %esi
     a43:	5f                   	pop    %edi
     a44:	5d                   	pop    %ebp
    gettoken(ps, es, 0, 0);
    cmd = backcmd(cmd);
  }
  if(peek(ps, es, ";")){
    gettoken(ps, es, 0, 0);
    cmd = listcmd(cmd, parseline(ps, es));
     a45:	e9 86 fa ff ff       	jmp    4d0 <listcmd>
     a4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000a50 <parseblock>:
  return cmd;
}

struct cmd*
parseblock(char **ps, char *es)
{
     a50:	55                   	push   %ebp
     a51:	89 e5                	mov    %esp,%ebp
     a53:	57                   	push   %edi
     a54:	56                   	push   %esi
     a55:	53                   	push   %ebx
     a56:	83 ec 1c             	sub    $0x1c,%esp
     a59:	8b 5d 08             	mov    0x8(%ebp),%ebx
     a5c:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct cmd *cmd;

  if(!peek(ps, es, "("))
     a5f:	c7 44 24 08 6d 13 00 	movl   $0x136d,0x8(%esp)
     a66:	00 
     a67:	89 1c 24             	mov    %ebx,(%esp)
     a6a:	89 74 24 04          	mov    %esi,0x4(%esp)
     a6e:	e8 3d fc ff ff       	call   6b0 <peek>
     a73:	85 c0                	test   %eax,%eax
     a75:	74 76                	je     aed <parseblock+0x9d>
    panic("parseblock");
  gettoken(ps, es, 0, 0);
     a77:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
     a7e:	00 
     a7f:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     a86:	00 
     a87:	89 74 24 04          	mov    %esi,0x4(%esp)
     a8b:	89 1c 24             	mov    %ebx,(%esp)
     a8e:	e8 dd fa ff ff       	call   570 <gettoken>
  cmd = parseline(ps, es);
     a93:	89 74 24 04          	mov    %esi,0x4(%esp)
     a97:	89 1c 24             	mov    %ebx,(%esp)
     a9a:	e8 f1 fe ff ff       	call   990 <parseline>
  if(!peek(ps, es, ")"))
     a9f:	c7 44 24 08 a9 13 00 	movl   $0x13a9,0x8(%esp)
     aa6:	00 
     aa7:	89 74 24 04          	mov    %esi,0x4(%esp)
     aab:	89 1c 24             	mov    %ebx,(%esp)
  struct cmd *cmd;

  if(!peek(ps, es, "("))
    panic("parseblock");
  gettoken(ps, es, 0, 0);
  cmd = parseline(ps, es);
     aae:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
     ab0:	e8 fb fb ff ff       	call   6b0 <peek>
     ab5:	85 c0                	test   %eax,%eax
     ab7:	74 40                	je     af9 <parseblock+0xa9>
    panic("syntax - missing )");
  gettoken(ps, es, 0, 0);
     ab9:	89 74 24 04          	mov    %esi,0x4(%esp)
     abd:	89 1c 24             	mov    %ebx,(%esp)
     ac0:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
     ac7:	00 
     ac8:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     acf:	00 
     ad0:	e8 9b fa ff ff       	call   570 <gettoken>
  cmd = parseredirs(cmd, ps, es);
     ad5:	89 74 24 08          	mov    %esi,0x8(%esp)
     ad9:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     add:	89 3c 24             	mov    %edi,(%esp)
     ae0:	e8 2b fc ff ff       	call   710 <parseredirs>
  return cmd;
}
     ae5:	83 c4 1c             	add    $0x1c,%esp
     ae8:	5b                   	pop    %ebx
     ae9:	5e                   	pop    %esi
     aea:	5f                   	pop    %edi
     aeb:	5d                   	pop    %ebp
     aec:	c3                   	ret    
parseblock(char **ps, char *es)
{
  struct cmd *cmd;

  if(!peek(ps, es, "("))
    panic("parseblock");
     aed:	c7 04 24 8d 13 00 00 	movl   $0x138d,(%esp)
     af4:	e8 07 f7 ff ff       	call   200 <panic>
  gettoken(ps, es, 0, 0);
  cmd = parseline(ps, es);
  if(!peek(ps, es, ")"))
    panic("syntax - missing )");
     af9:	c7 04 24 98 13 00 00 	movl   $0x1398,(%esp)
     b00:	e8 fb f6 ff ff       	call   200 <panic>
     b05:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     b09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000b10 <nulterminate>:
}

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
     b10:	55                   	push   %ebp
     b11:	89 e5                	mov    %esp,%ebp
     b13:	53                   	push   %ebx
     b14:	83 ec 14             	sub    $0x14,%esp
     b17:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     b1a:	85 db                	test   %ebx,%ebx
     b1c:	0f 84 8e 00 00 00    	je     bb0 <nulterminate+0xa0>
    return 0;

  switch(cmd->type){
     b22:	83 3b 05             	cmpl   $0x5,(%ebx)
     b25:	77 49                	ja     b70 <nulterminate+0x60>
     b27:	8b 03                	mov    (%ebx),%eax
     b29:	ff 24 85 e0 13 00 00 	jmp    *0x13e0(,%eax,4)
    nulterminate(pcmd->right);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    nulterminate(lcmd->left);
     b30:	8b 43 04             	mov    0x4(%ebx),%eax
     b33:	89 04 24             	mov    %eax,(%esp)
     b36:	e8 d5 ff ff ff       	call   b10 <nulterminate>
    nulterminate(lcmd->right);
     b3b:	8b 43 08             	mov    0x8(%ebx),%eax
     b3e:	89 04 24             	mov    %eax,(%esp)
     b41:	e8 ca ff ff ff       	call   b10 <nulterminate>
    break;
     b46:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
     b48:	83 c4 14             	add    $0x14,%esp
     b4b:	5b                   	pop    %ebx
     b4c:	5d                   	pop    %ebp
     b4d:	c3                   	ret    
     b4e:	66 90                	xchg   %ax,%ax
    return 0;

  switch(cmd->type){
  case EXEC:
    ecmd = (struct execcmd*)cmd;
    for(i=0; ecmd->argv[i]; i++)
     b50:	8b 4b 04             	mov    0x4(%ebx),%ecx
     b53:	89 d8                	mov    %ebx,%eax
     b55:	85 c9                	test   %ecx,%ecx
     b57:	74 17                	je     b70 <nulterminate+0x60>
     b59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      *ecmd->eargv[i] = 0;
     b60:	8b 50 2c             	mov    0x2c(%eax),%edx
     b63:	83 c0 04             	add    $0x4,%eax
     b66:	c6 02 00             	movb   $0x0,(%edx)
    return 0;

  switch(cmd->type){
  case EXEC:
    ecmd = (struct execcmd*)cmd;
    for(i=0; ecmd->argv[i]; i++)
     b69:	8b 50 04             	mov    0x4(%eax),%edx
     b6c:	85 d2                	test   %edx,%edx
     b6e:	75 f0                	jne    b60 <nulterminate+0x50>
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
     b70:	83 c4 14             	add    $0x14,%esp
  struct redircmd *rcmd;

  if(cmd == 0)
    return 0;

  switch(cmd->type){
     b73:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
     b75:	5b                   	pop    %ebx
     b76:	5d                   	pop    %ebp
     b77:	c3                   	ret    
    nulterminate(lcmd->right);
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
     b78:	8b 43 04             	mov    0x4(%ebx),%eax
     b7b:	89 04 24             	mov    %eax,(%esp)
     b7e:	e8 8d ff ff ff       	call   b10 <nulterminate>
    break;
  }
  return cmd;
     b83:	83 c4 14             	add    $0x14,%esp
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
     b86:	89 d8                	mov    %ebx,%eax
  }
  return cmd;
     b88:	5b                   	pop    %ebx
     b89:	5d                   	pop    %ebp
     b8a:	c3                   	ret    
     b8b:	90                   	nop
     b8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      *ecmd->eargv[i] = 0;
    break;

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    nulterminate(rcmd->cmd);
     b90:	8b 43 04             	mov    0x4(%ebx),%eax
     b93:	89 04 24             	mov    %eax,(%esp)
     b96:	e8 75 ff ff ff       	call   b10 <nulterminate>
    *rcmd->efile = 0;
     b9b:	8b 43 0c             	mov    0xc(%ebx),%eax
     b9e:	c6 00 00             	movb   $0x0,(%eax)
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
     ba1:	83 c4 14             	add    $0x14,%esp

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    nulterminate(rcmd->cmd);
    *rcmd->efile = 0;
    break;
     ba4:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
     ba6:	5b                   	pop    %ebx
     ba7:	5d                   	pop    %ebp
     ba8:	c3                   	ret    
     ba9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
    return 0;
     bb0:	31 c0                	xor    %eax,%eax
     bb2:	eb 94                	jmp    b48 <nulterminate+0x38>
     bb4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     bba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000bc0 <parsecmd>:
struct cmd *parseexec(char**, char*);
struct cmd *nulterminate(struct cmd*);

struct cmd*
parsecmd(char *s)
{
     bc0:	55                   	push   %ebp
     bc1:	89 e5                	mov    %esp,%ebp
     bc3:	56                   	push   %esi
     bc4:	53                   	push   %ebx
     bc5:	83 ec 10             	sub    $0x10,%esp
  char *es;
  struct cmd *cmd;

  es = s + strlen(s);
     bc8:	8b 5d 08             	mov    0x8(%ebp),%ebx
     bcb:	89 1c 24             	mov    %ebx,(%esp)
     bce:	e8 ed 00 00 00       	call   cc0 <strlen>
     bd3:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
     bd5:	8d 45 08             	lea    0x8(%ebp),%eax
     bd8:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     bdc:	89 04 24             	mov    %eax,(%esp)
     bdf:	e8 ac fd ff ff       	call   990 <parseline>
  peek(&s, es, "");
     be4:	c7 44 24 08 37 13 00 	movl   $0x1337,0x8(%esp)
     beb:	00 
     bec:	89 5c 24 04          	mov    %ebx,0x4(%esp)
{
  char *es;
  struct cmd *cmd;

  es = s + strlen(s);
  cmd = parseline(&s, es);
     bf0:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
     bf2:	8d 45 08             	lea    0x8(%ebp),%eax
     bf5:	89 04 24             	mov    %eax,(%esp)
     bf8:	e8 b3 fa ff ff       	call   6b0 <peek>
  if(s != es){
     bfd:	8b 45 08             	mov    0x8(%ebp),%eax
     c00:	39 d8                	cmp    %ebx,%eax
     c02:	75 11                	jne    c15 <parsecmd+0x55>
    printf(2, "leftovers: %s\n", s);
    panic("syntax");
  }
  nulterminate(cmd);
     c04:	89 34 24             	mov    %esi,(%esp)
     c07:	e8 04 ff ff ff       	call   b10 <nulterminate>
  return cmd;
}
     c0c:	83 c4 10             	add    $0x10,%esp
     c0f:	89 f0                	mov    %esi,%eax
     c11:	5b                   	pop    %ebx
     c12:	5e                   	pop    %esi
     c13:	5d                   	pop    %ebp
     c14:	c3                   	ret    

  es = s + strlen(s);
  cmd = parseline(&s, es);
  peek(&s, es, "");
  if(s != es){
    printf(2, "leftovers: %s\n", s);
     c15:	89 44 24 08          	mov    %eax,0x8(%esp)
     c19:	c7 44 24 04 ab 13 00 	movl   $0x13ab,0x4(%esp)
     c20:	00 
     c21:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     c28:	e8 83 03 00 00       	call   fb0 <printf>
    panic("syntax");
     c2d:	c7 04 24 6f 13 00 00 	movl   $0x136f,(%esp)
     c34:	e8 c7 f5 ff ff       	call   200 <panic>
     c39:	66 90                	xchg   %ax,%ax
     c3b:	66 90                	xchg   %ax,%ax
     c3d:	66 90                	xchg   %ax,%ax
     c3f:	90                   	nop

00000c40 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
     c40:	55                   	push   %ebp
     c41:	89 e5                	mov    %esp,%ebp
     c43:	8b 45 08             	mov    0x8(%ebp),%eax
     c46:	8b 4d 0c             	mov    0xc(%ebp),%ecx
     c49:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     c4a:	89 c2                	mov    %eax,%edx
     c4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     c50:	83 c1 01             	add    $0x1,%ecx
     c53:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
     c57:	83 c2 01             	add    $0x1,%edx
     c5a:	84 db                	test   %bl,%bl
     c5c:	88 5a ff             	mov    %bl,-0x1(%edx)
     c5f:	75 ef                	jne    c50 <strcpy+0x10>
    ;
  return os;
}
     c61:	5b                   	pop    %ebx
     c62:	5d                   	pop    %ebp
     c63:	c3                   	ret    
     c64:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     c6a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000c70 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     c70:	55                   	push   %ebp
     c71:	89 e5                	mov    %esp,%ebp
     c73:	8b 55 08             	mov    0x8(%ebp),%edx
     c76:	53                   	push   %ebx
     c77:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     c7a:	0f b6 02             	movzbl (%edx),%eax
     c7d:	84 c0                	test   %al,%al
     c7f:	74 2d                	je     cae <strcmp+0x3e>
     c81:	0f b6 19             	movzbl (%ecx),%ebx
     c84:	38 d8                	cmp    %bl,%al
     c86:	74 0e                	je     c96 <strcmp+0x26>
     c88:	eb 2b                	jmp    cb5 <strcmp+0x45>
     c8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     c90:	38 c8                	cmp    %cl,%al
     c92:	75 15                	jne    ca9 <strcmp+0x39>
    p++, q++;
     c94:	89 d9                	mov    %ebx,%ecx
     c96:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     c99:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
     c9c:	8d 59 01             	lea    0x1(%ecx),%ebx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     c9f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
     ca3:	84 c0                	test   %al,%al
     ca5:	75 e9                	jne    c90 <strcmp+0x20>
     ca7:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
     ca9:	29 c8                	sub    %ecx,%eax
}
     cab:	5b                   	pop    %ebx
     cac:	5d                   	pop    %ebp
     cad:	c3                   	ret    
     cae:	0f b6 09             	movzbl (%ecx),%ecx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     cb1:	31 c0                	xor    %eax,%eax
     cb3:	eb f4                	jmp    ca9 <strcmp+0x39>
     cb5:	0f b6 cb             	movzbl %bl,%ecx
     cb8:	eb ef                	jmp    ca9 <strcmp+0x39>
     cba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000cc0 <strlen>:
  return (uchar)*p - (uchar)*q;
}

uint
strlen(char *s)
{
     cc0:	55                   	push   %ebp
     cc1:	89 e5                	mov    %esp,%ebp
     cc3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
     cc6:	80 39 00             	cmpb   $0x0,(%ecx)
     cc9:	74 12                	je     cdd <strlen+0x1d>
     ccb:	31 d2                	xor    %edx,%edx
     ccd:	8d 76 00             	lea    0x0(%esi),%esi
     cd0:	83 c2 01             	add    $0x1,%edx
     cd3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
     cd7:	89 d0                	mov    %edx,%eax
     cd9:	75 f5                	jne    cd0 <strlen+0x10>
    ;
  return n;
}
     cdb:	5d                   	pop    %ebp
     cdc:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
     cdd:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
     cdf:	5d                   	pop    %ebp
     ce0:	c3                   	ret    
     ce1:	eb 0d                	jmp    cf0 <memset>
     ce3:	90                   	nop
     ce4:	90                   	nop
     ce5:	90                   	nop
     ce6:	90                   	nop
     ce7:	90                   	nop
     ce8:	90                   	nop
     ce9:	90                   	nop
     cea:	90                   	nop
     ceb:	90                   	nop
     cec:	90                   	nop
     ced:	90                   	nop
     cee:	90                   	nop
     cef:	90                   	nop

00000cf0 <memset>:

void*
memset(void *dst, int c, uint n)
{
     cf0:	55                   	push   %ebp
     cf1:	89 e5                	mov    %esp,%ebp
     cf3:	8b 55 08             	mov    0x8(%ebp),%edx
     cf6:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     cf7:	8b 4d 10             	mov    0x10(%ebp),%ecx
     cfa:	8b 45 0c             	mov    0xc(%ebp),%eax
     cfd:	89 d7                	mov    %edx,%edi
     cff:	fc                   	cld    
     d00:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     d02:	89 d0                	mov    %edx,%eax
     d04:	5f                   	pop    %edi
     d05:	5d                   	pop    %ebp
     d06:	c3                   	ret    
     d07:	89 f6                	mov    %esi,%esi
     d09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000d10 <strchr>:

char*
strchr(const char *s, char c)
{
     d10:	55                   	push   %ebp
     d11:	89 e5                	mov    %esp,%ebp
     d13:	8b 45 08             	mov    0x8(%ebp),%eax
     d16:	53                   	push   %ebx
     d17:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
     d1a:	0f b6 18             	movzbl (%eax),%ebx
     d1d:	84 db                	test   %bl,%bl
     d1f:	74 1d                	je     d3e <strchr+0x2e>
    if(*s == c)
     d21:	38 d3                	cmp    %dl,%bl
     d23:	89 d1                	mov    %edx,%ecx
     d25:	75 0d                	jne    d34 <strchr+0x24>
     d27:	eb 17                	jmp    d40 <strchr+0x30>
     d29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d30:	38 ca                	cmp    %cl,%dl
     d32:	74 0c                	je     d40 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
     d34:	83 c0 01             	add    $0x1,%eax
     d37:	0f b6 10             	movzbl (%eax),%edx
     d3a:	84 d2                	test   %dl,%dl
     d3c:	75 f2                	jne    d30 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
     d3e:	31 c0                	xor    %eax,%eax
}
     d40:	5b                   	pop    %ebx
     d41:	5d                   	pop    %ebp
     d42:	c3                   	ret    
     d43:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     d49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000d50 <gets>:

char*
gets(char *buf, int max)
{
     d50:	55                   	push   %ebp
     d51:	89 e5                	mov    %esp,%ebp
     d53:	57                   	push   %edi
     d54:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     d55:	31 f6                	xor    %esi,%esi
  return 0;
}

char*
gets(char *buf, int max)
{
     d57:	53                   	push   %ebx
     d58:	83 ec 2c             	sub    $0x2c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
     d5b:	8d 7d e7             	lea    -0x19(%ebp),%edi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     d5e:	eb 31                	jmp    d91 <gets+0x41>
    cc = read(0, &c, 1);
     d60:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     d67:	00 
     d68:	89 7c 24 04          	mov    %edi,0x4(%esp)
     d6c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     d73:	e8 02 01 00 00       	call   e7a <read>
    if(cc < 1)
     d78:	85 c0                	test   %eax,%eax
     d7a:	7e 1d                	jle    d99 <gets+0x49>
      break;
    buf[i++] = c;
     d7c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     d80:	89 de                	mov    %ebx,%esi
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
     d82:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
     d85:	3c 0d                	cmp    $0xd,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
     d87:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
     d8b:	74 0c                	je     d99 <gets+0x49>
     d8d:	3c 0a                	cmp    $0xa,%al
     d8f:	74 08                	je     d99 <gets+0x49>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     d91:	8d 5e 01             	lea    0x1(%esi),%ebx
     d94:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     d97:	7c c7                	jl     d60 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
     d99:	8b 45 08             	mov    0x8(%ebp),%eax
     d9c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
     da0:	83 c4 2c             	add    $0x2c,%esp
     da3:	5b                   	pop    %ebx
     da4:	5e                   	pop    %esi
     da5:	5f                   	pop    %edi
     da6:	5d                   	pop    %ebp
     da7:	c3                   	ret    
     da8:	90                   	nop
     da9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000db0 <stat>:

int
stat(char *n, struct stat *st)
{
     db0:	55                   	push   %ebp
     db1:	89 e5                	mov    %esp,%ebp
     db3:	56                   	push   %esi
     db4:	53                   	push   %ebx
     db5:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     db8:	8b 45 08             	mov    0x8(%ebp),%eax
     dbb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     dc2:	00 
     dc3:	89 04 24             	mov    %eax,(%esp)
     dc6:	e8 d7 00 00 00       	call   ea2 <open>
  if(fd < 0)
     dcb:	85 c0                	test   %eax,%eax
stat(char *n, struct stat *st)
{
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     dcd:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
     dcf:	78 27                	js     df8 <stat+0x48>
    return -1;
  r = fstat(fd, st);
     dd1:	8b 45 0c             	mov    0xc(%ebp),%eax
     dd4:	89 1c 24             	mov    %ebx,(%esp)
     dd7:	89 44 24 04          	mov    %eax,0x4(%esp)
     ddb:	e8 da 00 00 00       	call   eba <fstat>
  close(fd);
     de0:	89 1c 24             	mov    %ebx,(%esp)
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
  r = fstat(fd, st);
     de3:	89 c6                	mov    %eax,%esi
  close(fd);
     de5:	e8 a0 00 00 00       	call   e8a <close>
  return r;
     dea:	89 f0                	mov    %esi,%eax
}
     dec:	83 c4 10             	add    $0x10,%esp
     def:	5b                   	pop    %ebx
     df0:	5e                   	pop    %esi
     df1:	5d                   	pop    %ebp
     df2:	c3                   	ret    
     df3:	90                   	nop
     df4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
     df8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     dfd:	eb ed                	jmp    dec <stat+0x3c>
     dff:	90                   	nop

00000e00 <atoi>:
  return r;
}

int
atoi(const char *s)
{
     e00:	55                   	push   %ebp
     e01:	89 e5                	mov    %esp,%ebp
     e03:	8b 4d 08             	mov    0x8(%ebp),%ecx
     e06:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     e07:	0f be 11             	movsbl (%ecx),%edx
     e0a:	8d 42 d0             	lea    -0x30(%edx),%eax
     e0d:	3c 09                	cmp    $0x9,%al
int
atoi(const char *s)
{
  int n;

  n = 0;
     e0f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
     e14:	77 17                	ja     e2d <atoi+0x2d>
     e16:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
     e18:	83 c1 01             	add    $0x1,%ecx
     e1b:	8d 04 80             	lea    (%eax,%eax,4),%eax
     e1e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     e22:	0f be 11             	movsbl (%ecx),%edx
     e25:	8d 5a d0             	lea    -0x30(%edx),%ebx
     e28:	80 fb 09             	cmp    $0x9,%bl
     e2b:	76 eb                	jbe    e18 <atoi+0x18>
    n = n*10 + *s++ - '0';
  return n;
}
     e2d:	5b                   	pop    %ebx
     e2e:	5d                   	pop    %ebp
     e2f:	c3                   	ret    

00000e30 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
     e30:	55                   	push   %ebp
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     e31:	31 d2                	xor    %edx,%edx
  return n;
}

void*
memmove(void *vdst, void *vsrc, int n)
{
     e33:	89 e5                	mov    %esp,%ebp
     e35:	56                   	push   %esi
     e36:	8b 45 08             	mov    0x8(%ebp),%eax
     e39:	53                   	push   %ebx
     e3a:	8b 5d 10             	mov    0x10(%ebp),%ebx
     e3d:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     e40:	85 db                	test   %ebx,%ebx
     e42:	7e 12                	jle    e56 <memmove+0x26>
     e44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
     e48:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
     e4c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
     e4f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     e52:	39 da                	cmp    %ebx,%edx
     e54:	75 f2                	jne    e48 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
     e56:	5b                   	pop    %ebx
     e57:	5e                   	pop    %esi
     e58:	5d                   	pop    %ebp
     e59:	c3                   	ret    

00000e5a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     e5a:	b8 01 00 00 00       	mov    $0x1,%eax
     e5f:	cd 40                	int    $0x40
     e61:	c3                   	ret    

00000e62 <exit>:
SYSCALL(exit)
     e62:	b8 02 00 00 00       	mov    $0x2,%eax
     e67:	cd 40                	int    $0x40
     e69:	c3                   	ret    

00000e6a <wait>:
SYSCALL(wait)
     e6a:	b8 03 00 00 00       	mov    $0x3,%eax
     e6f:	cd 40                	int    $0x40
     e71:	c3                   	ret    

00000e72 <pipe>:
SYSCALL(pipe)
     e72:	b8 04 00 00 00       	mov    $0x4,%eax
     e77:	cd 40                	int    $0x40
     e79:	c3                   	ret    

00000e7a <read>:
SYSCALL(read)
     e7a:	b8 05 00 00 00       	mov    $0x5,%eax
     e7f:	cd 40                	int    $0x40
     e81:	c3                   	ret    

00000e82 <write>:
SYSCALL(write)
     e82:	b8 10 00 00 00       	mov    $0x10,%eax
     e87:	cd 40                	int    $0x40
     e89:	c3                   	ret    

00000e8a <close>:
SYSCALL(close)
     e8a:	b8 15 00 00 00       	mov    $0x15,%eax
     e8f:	cd 40                	int    $0x40
     e91:	c3                   	ret    

00000e92 <kill>:
SYSCALL(kill)
     e92:	b8 06 00 00 00       	mov    $0x6,%eax
     e97:	cd 40                	int    $0x40
     e99:	c3                   	ret    

00000e9a <exec>:
SYSCALL(exec)
     e9a:	b8 07 00 00 00       	mov    $0x7,%eax
     e9f:	cd 40                	int    $0x40
     ea1:	c3                   	ret    

00000ea2 <open>:
SYSCALL(open)
     ea2:	b8 0f 00 00 00       	mov    $0xf,%eax
     ea7:	cd 40                	int    $0x40
     ea9:	c3                   	ret    

00000eaa <mknod>:
SYSCALL(mknod)
     eaa:	b8 11 00 00 00       	mov    $0x11,%eax
     eaf:	cd 40                	int    $0x40
     eb1:	c3                   	ret    

00000eb2 <unlink>:
SYSCALL(unlink)
     eb2:	b8 12 00 00 00       	mov    $0x12,%eax
     eb7:	cd 40                	int    $0x40
     eb9:	c3                   	ret    

00000eba <fstat>:
SYSCALL(fstat)
     eba:	b8 08 00 00 00       	mov    $0x8,%eax
     ebf:	cd 40                	int    $0x40
     ec1:	c3                   	ret    

00000ec2 <link>:
SYSCALL(link)
     ec2:	b8 13 00 00 00       	mov    $0x13,%eax
     ec7:	cd 40                	int    $0x40
     ec9:	c3                   	ret    

00000eca <mkdir>:
SYSCALL(mkdir)
     eca:	b8 14 00 00 00       	mov    $0x14,%eax
     ecf:	cd 40                	int    $0x40
     ed1:	c3                   	ret    

00000ed2 <chdir>:
SYSCALL(chdir)
     ed2:	b8 09 00 00 00       	mov    $0x9,%eax
     ed7:	cd 40                	int    $0x40
     ed9:	c3                   	ret    

00000eda <dup>:
SYSCALL(dup)
     eda:	b8 0a 00 00 00       	mov    $0xa,%eax
     edf:	cd 40                	int    $0x40
     ee1:	c3                   	ret    

00000ee2 <getpid>:
SYSCALL(getpid)
     ee2:	b8 0b 00 00 00       	mov    $0xb,%eax
     ee7:	cd 40                	int    $0x40
     ee9:	c3                   	ret    

00000eea <sbrk>:
SYSCALL(sbrk)
     eea:	b8 0c 00 00 00       	mov    $0xc,%eax
     eef:	cd 40                	int    $0x40
     ef1:	c3                   	ret    

00000ef2 <sleep>:
SYSCALL(sleep)
     ef2:	b8 0d 00 00 00       	mov    $0xd,%eax
     ef7:	cd 40                	int    $0x40
     ef9:	c3                   	ret    

00000efa <uptime>:
SYSCALL(uptime)
     efa:	b8 0e 00 00 00       	mov    $0xe,%eax
     eff:	cd 40                	int    $0x40
     f01:	c3                   	ret    

00000f02 <date>:
SYSCALL(date) #added for date syscall
     f02:	b8 16 00 00 00       	mov    $0x16,%eax
     f07:	cd 40                	int    $0x40
     f09:	c3                   	ret    
     f0a:	66 90                	xchg   %ax,%ax
     f0c:	66 90                	xchg   %ax,%ax
     f0e:	66 90                	xchg   %ax,%ax

00000f10 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
     f10:	55                   	push   %ebp
     f11:	89 e5                	mov    %esp,%ebp
     f13:	57                   	push   %edi
     f14:	56                   	push   %esi
     f15:	89 c6                	mov    %eax,%esi
     f17:	53                   	push   %ebx
     f18:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
     f1b:	8b 5d 08             	mov    0x8(%ebp),%ebx
     f1e:	85 db                	test   %ebx,%ebx
     f20:	74 09                	je     f2b <printint+0x1b>
     f22:	89 d0                	mov    %edx,%eax
     f24:	c1 e8 1f             	shr    $0x1f,%eax
     f27:	84 c0                	test   %al,%al
     f29:	75 75                	jne    fa0 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
     f2b:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
     f2d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
     f34:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
     f37:	31 ff                	xor    %edi,%edi
     f39:	89 ce                	mov    %ecx,%esi
     f3b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
     f3e:	eb 02                	jmp    f42 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
     f40:	89 cf                	mov    %ecx,%edi
     f42:	31 d2                	xor    %edx,%edx
     f44:	f7 f6                	div    %esi
     f46:	8d 4f 01             	lea    0x1(%edi),%ecx
     f49:	0f b6 92 ff 13 00 00 	movzbl 0x13ff(%edx),%edx
  }while((x /= base) != 0);
     f50:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
     f52:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
     f55:	75 e9                	jne    f40 <printint+0x30>
  if(neg)
     f57:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
     f5a:	89 c8                	mov    %ecx,%eax
     f5c:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
     f5f:	85 d2                	test   %edx,%edx
     f61:	74 08                	je     f6b <printint+0x5b>
    buf[i++] = '-';
     f63:	8d 4f 02             	lea    0x2(%edi),%ecx
     f66:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
     f6b:	8d 79 ff             	lea    -0x1(%ecx),%edi
     f6e:	66 90                	xchg   %ax,%ax
     f70:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
     f75:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     f78:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     f7f:	00 
     f80:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     f84:	89 34 24             	mov    %esi,(%esp)
     f87:	88 45 d7             	mov    %al,-0x29(%ebp)
     f8a:	e8 f3 fe ff ff       	call   e82 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
     f8f:	83 ff ff             	cmp    $0xffffffff,%edi
     f92:	75 dc                	jne    f70 <printint+0x60>
    putc(fd, buf[i]);
}
     f94:	83 c4 4c             	add    $0x4c,%esp
     f97:	5b                   	pop    %ebx
     f98:	5e                   	pop    %esi
     f99:	5f                   	pop    %edi
     f9a:	5d                   	pop    %ebp
     f9b:	c3                   	ret    
     f9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
     fa0:	89 d0                	mov    %edx,%eax
     fa2:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
     fa4:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
     fab:	eb 87                	jmp    f34 <printint+0x24>
     fad:	8d 76 00             	lea    0x0(%esi),%esi

00000fb0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
     fb0:	55                   	push   %ebp
     fb1:	89 e5                	mov    %esp,%ebp
     fb3:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
     fb4:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
     fb6:	56                   	push   %esi
     fb7:	53                   	push   %ebx
     fb8:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     fbb:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
     fbe:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
     fc1:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
     fc4:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
     fc7:	0f b6 13             	movzbl (%ebx),%edx
     fca:	83 c3 01             	add    $0x1,%ebx
     fcd:	84 d2                	test   %dl,%dl
     fcf:	75 39                	jne    100a <printf+0x5a>
     fd1:	e9 c2 00 00 00       	jmp    1098 <printf+0xe8>
     fd6:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
     fd8:	83 fa 25             	cmp    $0x25,%edx
     fdb:	0f 84 bf 00 00 00    	je     10a0 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     fe1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
     fe4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     feb:	00 
     fec:	89 44 24 04          	mov    %eax,0x4(%esp)
     ff0:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
     ff3:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     ff6:	e8 87 fe ff ff       	call   e82 <write>
     ffb:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     ffe:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    1002:	84 d2                	test   %dl,%dl
    1004:	0f 84 8e 00 00 00    	je     1098 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
    100a:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    100c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
    100f:	74 c7                	je     fd8 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    1011:	83 ff 25             	cmp    $0x25,%edi
    1014:	75 e5                	jne    ffb <printf+0x4b>
      if(c == 'd'){
    1016:	83 fa 64             	cmp    $0x64,%edx
    1019:	0f 84 31 01 00 00    	je     1150 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    101f:	25 f7 00 00 00       	and    $0xf7,%eax
    1024:	83 f8 70             	cmp    $0x70,%eax
    1027:	0f 84 83 00 00 00    	je     10b0 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    102d:	83 fa 73             	cmp    $0x73,%edx
    1030:	0f 84 a2 00 00 00    	je     10d8 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    1036:	83 fa 63             	cmp    $0x63,%edx
    1039:	0f 84 35 01 00 00    	je     1174 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    103f:	83 fa 25             	cmp    $0x25,%edx
    1042:	0f 84 e0 00 00 00    	je     1128 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1048:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    104b:	83 c3 01             	add    $0x1,%ebx
    104e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1055:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1056:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1058:	89 44 24 04          	mov    %eax,0x4(%esp)
    105c:	89 34 24             	mov    %esi,(%esp)
    105f:	89 55 d0             	mov    %edx,-0x30(%ebp)
    1062:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
    1066:	e8 17 fe ff ff       	call   e82 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    106b:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    106e:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1071:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1078:	00 
    1079:	89 44 24 04          	mov    %eax,0x4(%esp)
    107d:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    1080:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1083:	e8 fa fd ff ff       	call   e82 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1088:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    108c:	84 d2                	test   %dl,%dl
    108e:	0f 85 76 ff ff ff    	jne    100a <printf+0x5a>
    1094:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    1098:	83 c4 3c             	add    $0x3c,%esp
    109b:	5b                   	pop    %ebx
    109c:	5e                   	pop    %esi
    109d:	5f                   	pop    %edi
    109e:	5d                   	pop    %ebp
    109f:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    10a0:	bf 25 00 00 00       	mov    $0x25,%edi
    10a5:	e9 51 ff ff ff       	jmp    ffb <printf+0x4b>
    10aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    10b0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    10b3:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    10b8:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    10ba:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    10c1:	8b 10                	mov    (%eax),%edx
    10c3:	89 f0                	mov    %esi,%eax
    10c5:	e8 46 fe ff ff       	call   f10 <printint>
        ap++;
    10ca:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    10ce:	e9 28 ff ff ff       	jmp    ffb <printf+0x4b>
    10d3:	90                   	nop
    10d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
    10d8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
    10db:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
    10df:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
    10e1:	b8 f8 13 00 00       	mov    $0x13f8,%eax
    10e6:	85 ff                	test   %edi,%edi
    10e8:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
    10eb:	0f b6 07             	movzbl (%edi),%eax
    10ee:	84 c0                	test   %al,%al
    10f0:	74 2a                	je     111c <printf+0x16c>
    10f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    10f8:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    10fb:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
    10fe:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1101:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1108:	00 
    1109:	89 44 24 04          	mov    %eax,0x4(%esp)
    110d:	89 34 24             	mov    %esi,(%esp)
    1110:	e8 6d fd ff ff       	call   e82 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
    1115:	0f b6 07             	movzbl (%edi),%eax
    1118:	84 c0                	test   %al,%al
    111a:	75 dc                	jne    10f8 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    111c:	31 ff                	xor    %edi,%edi
    111e:	e9 d8 fe ff ff       	jmp    ffb <printf+0x4b>
    1123:	90                   	nop
    1124:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1128:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    112b:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    112d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1134:	00 
    1135:	89 44 24 04          	mov    %eax,0x4(%esp)
    1139:	89 34 24             	mov    %esi,(%esp)
    113c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
    1140:	e8 3d fd ff ff       	call   e82 <write>
    1145:	e9 b1 fe ff ff       	jmp    ffb <printf+0x4b>
    114a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    1150:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    1153:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1158:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    115b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1162:	8b 10                	mov    (%eax),%edx
    1164:	89 f0                	mov    %esi,%eax
    1166:	e8 a5 fd ff ff       	call   f10 <printint>
        ap++;
    116b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    116f:	e9 87 fe ff ff       	jmp    ffb <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    1174:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1177:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    1179:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    117b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1182:	00 
    1183:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    1186:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1189:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    118c:	89 44 24 04          	mov    %eax,0x4(%esp)
    1190:	e8 ed fc ff ff       	call   e82 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
    1195:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    1199:	e9 5d fe ff ff       	jmp    ffb <printf+0x4b>
    119e:	66 90                	xchg   %ax,%ax

000011a0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    11a0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    11a1:	a1 e4 19 00 00       	mov    0x19e4,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
    11a6:	89 e5                	mov    %esp,%ebp
    11a8:	57                   	push   %edi
    11a9:	56                   	push   %esi
    11aa:	53                   	push   %ebx
    11ab:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    11ae:	8b 08                	mov    (%eax),%ecx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
    11b0:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    11b3:	39 d0                	cmp    %edx,%eax
    11b5:	72 11                	jb     11c8 <free+0x28>
    11b7:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    11b8:	39 c8                	cmp    %ecx,%eax
    11ba:	72 04                	jb     11c0 <free+0x20>
    11bc:	39 ca                	cmp    %ecx,%edx
    11be:	72 10                	jb     11d0 <free+0x30>
    11c0:	89 c8                	mov    %ecx,%eax
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    11c2:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    11c4:	8b 08                	mov    (%eax),%ecx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    11c6:	73 f0                	jae    11b8 <free+0x18>
    11c8:	39 ca                	cmp    %ecx,%edx
    11ca:	72 04                	jb     11d0 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    11cc:	39 c8                	cmp    %ecx,%eax
    11ce:	72 f0                	jb     11c0 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    11d0:	8b 73 fc             	mov    -0x4(%ebx),%esi
    11d3:	8d 3c f2             	lea    (%edx,%esi,8),%edi
    11d6:	39 cf                	cmp    %ecx,%edi
    11d8:	74 1e                	je     11f8 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    11da:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    11dd:	8b 48 04             	mov    0x4(%eax),%ecx
    11e0:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    11e3:	39 f2                	cmp    %esi,%edx
    11e5:	74 28                	je     120f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    11e7:	89 10                	mov    %edx,(%eax)
  freep = p;
    11e9:	a3 e4 19 00 00       	mov    %eax,0x19e4
}
    11ee:	5b                   	pop    %ebx
    11ef:	5e                   	pop    %esi
    11f0:	5f                   	pop    %edi
    11f1:	5d                   	pop    %ebp
    11f2:	c3                   	ret    
    11f3:	90                   	nop
    11f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
    11f8:	03 71 04             	add    0x4(%ecx),%esi
    11fb:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    11fe:	8b 08                	mov    (%eax),%ecx
    1200:	8b 09                	mov    (%ecx),%ecx
    1202:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    1205:	8b 48 04             	mov    0x4(%eax),%ecx
    1208:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    120b:	39 f2                	cmp    %esi,%edx
    120d:	75 d8                	jne    11e7 <free+0x47>
    p->s.size += bp->s.size;
    120f:	03 4b fc             	add    -0x4(%ebx),%ecx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
    1212:	a3 e4 19 00 00       	mov    %eax,0x19e4
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
    1217:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    121a:	8b 53 f8             	mov    -0x8(%ebx),%edx
    121d:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
    121f:	5b                   	pop    %ebx
    1220:	5e                   	pop    %esi
    1221:	5f                   	pop    %edi
    1222:	5d                   	pop    %ebp
    1223:	c3                   	ret    
    1224:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    122a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001230 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1230:	55                   	push   %ebp
    1231:	89 e5                	mov    %esp,%ebp
    1233:	57                   	push   %edi
    1234:	56                   	push   %esi
    1235:	53                   	push   %ebx
    1236:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1239:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    123c:	8b 1d e4 19 00 00    	mov    0x19e4,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1242:	8d 48 07             	lea    0x7(%eax),%ecx
    1245:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
    1248:	85 db                	test   %ebx,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    124a:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
    124d:	0f 84 9b 00 00 00    	je     12ee <malloc+0xbe>
    1253:	8b 13                	mov    (%ebx),%edx
    1255:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1258:	39 fe                	cmp    %edi,%esi
    125a:	76 64                	jbe    12c0 <malloc+0x90>
    125c:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
    1263:	bb 00 80 00 00       	mov    $0x8000,%ebx
    1268:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    126b:	eb 0e                	jmp    127b <malloc+0x4b>
    126d:	8d 76 00             	lea    0x0(%esi),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1270:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    1272:	8b 78 04             	mov    0x4(%eax),%edi
    1275:	39 fe                	cmp    %edi,%esi
    1277:	76 4f                	jbe    12c8 <malloc+0x98>
    1279:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    127b:	3b 15 e4 19 00 00    	cmp    0x19e4,%edx
    1281:	75 ed                	jne    1270 <malloc+0x40>
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
    1283:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1286:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    128c:	bf 00 10 00 00       	mov    $0x1000,%edi
    1291:	0f 43 fe             	cmovae %esi,%edi
    1294:	0f 42 c3             	cmovb  %ebx,%eax
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
    1297:	89 04 24             	mov    %eax,(%esp)
    129a:	e8 4b fc ff ff       	call   eea <sbrk>
  if(p == (char*)-1)
    129f:	83 f8 ff             	cmp    $0xffffffff,%eax
    12a2:	74 18                	je     12bc <malloc+0x8c>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
    12a4:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
    12a7:	83 c0 08             	add    $0x8,%eax
    12aa:	89 04 24             	mov    %eax,(%esp)
    12ad:	e8 ee fe ff ff       	call   11a0 <free>
  return freep;
    12b2:	8b 15 e4 19 00 00    	mov    0x19e4,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
    12b8:	85 d2                	test   %edx,%edx
    12ba:	75 b4                	jne    1270 <malloc+0x40>
        return 0;
    12bc:	31 c0                	xor    %eax,%eax
    12be:	eb 20                	jmp    12e0 <malloc+0xb0>
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    12c0:	89 d0                	mov    %edx,%eax
    12c2:	89 da                	mov    %ebx,%edx
    12c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    12c8:	39 fe                	cmp    %edi,%esi
    12ca:	74 1c                	je     12e8 <malloc+0xb8>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
    12cc:	29 f7                	sub    %esi,%edi
    12ce:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
    12d1:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
    12d4:	89 70 04             	mov    %esi,0x4(%eax)
      }
      freep = prevp;
    12d7:	89 15 e4 19 00 00    	mov    %edx,0x19e4
      return (void*)(p + 1);
    12dd:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
    12e0:	83 c4 1c             	add    $0x1c,%esp
    12e3:	5b                   	pop    %ebx
    12e4:	5e                   	pop    %esi
    12e5:	5f                   	pop    %edi
    12e6:	5d                   	pop    %ebp
    12e7:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
    12e8:	8b 08                	mov    (%eax),%ecx
    12ea:	89 0a                	mov    %ecx,(%edx)
    12ec:	eb e9                	jmp    12d7 <malloc+0xa7>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    12ee:	c7 05 e4 19 00 00 e8 	movl   $0x19e8,0x19e4
    12f5:	19 00 00 
    base.s.size = 0;
    12f8:	ba e8 19 00 00       	mov    $0x19e8,%edx
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    12fd:	c7 05 e8 19 00 00 e8 	movl   $0x19e8,0x19e8
    1304:	19 00 00 
    base.s.size = 0;
    1307:	c7 05 ec 19 00 00 00 	movl   $0x0,0x19ec
    130e:	00 00 00 
    1311:	e9 46 ff ff ff       	jmp    125c <malloc+0x2c>
