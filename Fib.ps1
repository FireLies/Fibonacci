function fib {

    [CmdletBinding()]
    param (
        [int]$n
    )

    process {
        [System.Collections.ArrayList][int[]]$fib = 0, 1
        foreach ($x in 2..$n) {
            [void]$fib.Add($fib[$x - 1] + $fib[$x - 2])
        }
        return $fib
    }
}
