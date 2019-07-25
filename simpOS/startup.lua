while true do
    term.setTextColor( colors.cyan )
    write("simpOS-dev-0.0.1@")
    term.setTextColor( colors.purple )
    write( shell.dir() )
    term.setTextColor( colors.green )
    write("> ")
    term.setTextColor( colors.white )

    sLine = read( nil, tCommandHistory, shell.complete )

        shell.run(sLine)
        
        rednet.broadcast(sLine)
end