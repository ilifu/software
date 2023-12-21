Note these scripts use csh. 

You first need to make sure that lmod works correctly under csh. 
By default we only currently set it up for bash and zsh.
To fix it I had to do the following:

```
sudo ln -s /opt/lmod/lmod/8.7.32/init/cshrc          /etc/profile.d/z00_lmod.csh
```

To compile the pulsarbuild scripts please run:  
```
./build_all.build
```