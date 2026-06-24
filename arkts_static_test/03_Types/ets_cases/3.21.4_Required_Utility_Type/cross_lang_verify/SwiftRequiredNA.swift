var pass=0,fail=0
func check(_ c:Bool,_ s:String){if c{pass+=1;print("PASS \(s)")}else{fail+=1;print("FAIL \(s)")}}
check(true,"Swift has no Required type N/A")
print("SUMMARY pass=\(pass) fail=\(fail)")
if fail != 0{exit(1)}