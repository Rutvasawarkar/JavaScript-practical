<html>
<body>
<h3>Palindrome Checker</h3>
<input id="w" placeholder="Enter string">
<button onclick="check()">Check</button>
<p id="r"></p>

<script>
let appName = "Palindrome App";

function counter() {
    let count = 0;
    return () => ++count;
}
let c = counter();

function check() {
    try {
        let s = w.value;
        if (!s) throw "Enter a string";
        r.innerHTML = s == s.split('').reverse().join('')
            ? "Palindrome" : "Not Palindrome";
        c();
    }
    catch(e) {
        r.innerHTML = e;
    }
}

let reverse = function(s) { return s.split('').reverse().join(''); };
let clean = s => s.trim().toLowerCase();
</script>
</body>
</html>
