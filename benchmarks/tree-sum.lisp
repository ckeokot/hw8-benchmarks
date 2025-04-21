(define (tree-sum tree)
  (if (empty? tree)
    0
    (if (num? tree)
      tree
      (let ((left-val (left tree)))
        (let ((right-tree (right tree)))
          (if (num? left-val)
            (+ left-val (tree-sum right-tree))
            (+ (tree-sum left-val) (tree-sum right-tree))))))))

(define (make-tree depth val)
  (if (zero? depth)
    val
    (pair (make-tree (sub1 depth) val)
      (make-tree (sub1 depth) val))))

(do
  (print (tree-sum (make-tree 8 1)))
  (newline))
