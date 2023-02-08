# Locate the ruby documentation for methods
# File::path and File#path. How are they different?


    # File::path
    #     is a class method
    #     path(path) → string 
    #     returns the string representation of the path

    File.path("/dev/null")          #=> "/dev/null"
    File.path(Pathname.new("/tmp")) #=> "/tmp"

    # File#path
    #     (under class: IO in ruby 3.2.0)
    #   
    #     is an instance method
    #     path → string or nil 
    #     Returns the path associated with the IO, or nil if there is no path associated with the IO.
    #     It is not guaranteed that the path exists on the filesystem.

    $stdin.path # => "<STDIN>"
    File.open("testfile") {|f| f.path} # => "testfile"

#make sure you are using a class method when you need a class method, and an instance method when you need an instance method.