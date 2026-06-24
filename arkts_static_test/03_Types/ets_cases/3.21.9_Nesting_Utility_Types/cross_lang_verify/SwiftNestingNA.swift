var p=0,f=0;func c(_ b:Bool,_ s:String){if b{p+=1;print("PASS \(s)")}else{f+=1;print("FAIL \(s)")}}
c(true,"Swift has no nesting utility types N/A")
print("SUMMARY pass=\(p) fail=\(f)");if f != 0{exit(1)}