

# Structure and Interpretation of Computer Programs (SICP)
- [Structure and Interpretation of Computer Programs (SICP](https://mitpress.mit.edu/sicp/full-text/book/book.html)
- [SICP Lectures](https://groups.csail.mit.edu/mac/classes/6.001/abelson-sussman-lectures/)

# Links
- [Gnu Guile](https://www.gnu.org/software/guile/)
- [MIT Scheme](https://www.gnu.org/software/mit-scheme/)
- [Racket](http://racket-lang.org/)
- [Gambit-C](http://gambitscheme.org/) and [source](https://github.com/gambit/gambit)


- [Fedora Copr](https://copr.fedorainfracloud.org/coprs/bthomas/racket/)
    sudo dnf copr enable bthomas/racket
    sudo dnf install racket


# Notes
- Pretty printing: align operands vertically


# Guile Reference
$ guile -l ex1-20.scm

scheme@(guile-user)> (load "ex1-20.scm")
scheme@(guile-user)> (gcd 40 206)
$1 = 2
scheme@(guile-user)> (exit)

# MIT-Scheme Reference
1 ]=> (sf "ex1-20.scm")
1 ]=> (gcd 40 206)
;Value: 2

1 ]=> (pp (fasload "ex1-20.scm"))
;Loading "ex1-20.bin"... done
(define (gcd a b) (if (= b 0) a (gcd b (remainder a b))))
;Unspecified return value


