# Unrar
🐳 Docker image for Unrar

> docker run -it --rm nazarsky/unrar:1.0.1 unrar -v

    UNRAR 6.24 beta 1 freeware      Copyright (c) 1993-2023 Alexander Roshal
    
    Usage:     unrar <command> -<switch 1> -<switch N> <archive> <files...>
                   <@listfiles...> <path_to_extract/>
    
    <Commands>
      e             Extract files without archived paths
      l[t[a],b]     List archive contents [technical[all], bare]
      p             Print file to stdout
      t             Test archive files
      v[t[a],b]     Verbosely list archive contents [technical[all],bare]
      x             Extract files with full path
    
    <Switches>
      -             Stop switches scanning
      @[+]          Disable [enable] file lists
      ad[1,2]       Alternate destination path
      ag[format]    Generate archive name using the current date
      ai            Ignore file attributes
      ap<path>      Set path inside archive
      c-            Disable comments show
      cfg-          Disable read configuration
      cl            Convert names to lower case
      cu            Convert names to upper case
      dh            Open shared files
      ep            Exclude paths from names
      ep3           Expand paths to full including the drive letter
      ep4<path>     Exclude the path prefix from names
      f             Freshen files
      id[c,d,n,p,q] Display or disable messages
      ierr          Send all messages to stderr
      inul          Disable all messages
      kb            Keep broken extracted files
      me[par]       Set encryption parameters
      n<file>       Additionally filter included files
      n@            Read additional filter masks from stdin
      n@<list>      Read additional filter masks from list file
      o[+|-]        Set the overwrite mode
      ol[a]         Process symbolic links as the link [absolute paths]
      op<path>      Set the output path for extracted files
      or            Rename files automatically
      ow            Save or restore file owner and group
      p[password]   Set password
      r             Recurse subdirectories
      sc<chr>[obj]  Specify the character set
      si[name]      Read data from standard input (stdin)
      sl<size>      Process files with size less than specified
      sm<size>      Process files with size more than specified
      ta[mcao]<d>   Process files modified after <d> YYYYMMDDHHMMSS date
      tb[mcao]<d>   Process files modified before <d> YYYYMMDDHHMMSS date
      tn[mcao]<t>   Process files newer than <t> time
      to[mcao]<t>   Process files older than <t> time
      ts[m,c,a,p]   Save or restore time (modification, creation, access, preserve)
      u             Update files
      v             List all volumes
      ver[n]        File version control
      vp            Pause before each volume
      x<file>       Exclude specified file
      x@            Read file names to exclude from stdin
      x@<list>      Exclude files listed in specified list file
      y             Assume Yes on all queries
