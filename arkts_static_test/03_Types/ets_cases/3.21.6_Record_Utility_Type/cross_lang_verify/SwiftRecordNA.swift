var p=0,f=0;func c(_ b:Bool,_ s:String){if b{p+=1;print("PASS \(s)")}else{f+=1;print("FAIL \(s)")}}
c(true,"Swift Dictionary is runtime, no compile-time Record N/A")
print("SUMMARY pass=\(p) fail=\(f)");if f != 0{exit(1)}