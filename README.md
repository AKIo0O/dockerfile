# dockerfile
nginx



## osx 常见问题

 * [端口无法映射](https://github.com/docker/docker/issues/4007)
 * 将Boot2docker 的teriminal改成iterm
    ```applescript
   tell application "iTerm"
	make new terminal
	tell the current terminal
		activate current session
		
		tell the last session
			write text "unset DYLD_LIBRARY_PATH ; unset LD_LIBRARY_PATH"
			write text "mkdir -p ~/.boot2docker"
			write text "if [ ! -f ~/.boot2docker/boot2docker.iso ]; then cp /usr/local/share/boot2docker/boot2docker.iso ~/.boot2docker/ ; fi"
			write text "/usr/local/bin/boot2docker init && /usr/local/bin/boot2docker up && $(boot2docker shellinit) && docker version"
		end tell
	end tell
end tell
   ```
 * 修复host执行 
   
   ``` Shell
       export DOCKER_HOST=tcp://127.0.0.1:2376
