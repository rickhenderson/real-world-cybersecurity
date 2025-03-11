rule is_notepad 
{ 
    // Documentation on writing YARA rules can be found at https://yara.readthedocs.io/en/latest/writingrules.html
    // Detecting the presence of notepad.exe is a simple test for detection to ensure things are working correctly.
    
    meta:
        author = "Rick Henderson"
        date = "2025-03-10"

    strings:
        $filename = "notepad.exe"
        $is_pe = "MZ" //There is a better way to detect PE files with YARA

    condition: 
        $filename or $is_pe

}
