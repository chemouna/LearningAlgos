(ns algos-clj.countingsort)

(defn counting-sort
  ([coll] (counting-sort coll (apply min coll) (apply max coll)))
  ([coll min max] (let [i 0 (counts ))))
