(asdf:defsystem euler-cl
  :description "Project Euler solutions"
  :author "Christopher Wellons <mosquitopsu@gmail.com>"
  :licence "Public Domain"
  :components ((:file "common")
               (:file "euler-1")
               (:file "euler-2")
               (:file "euler-3" :depends-on ("common"))
               (:file "euler-4")
               (:file "euler-5" :depends-on ("common"))
               (:file "euler-6")
               (:file "euler-7" :depends-on ("common"))
               (:file "euler-8")
               (:file "euler-9")
               (:file "euler-10" :depends-on ("common"))
               (:file "euler-11")
               (:file "euler-12" :depends-on ("common"))
               (:file "euler-13")
               (:file "euler-14")
               (:file "euler-15" :depends-on ("common"))
               (:file "euler-16")
               (:file "euler-17")
               (:file "euler-18")
               (:file "euler-19")
               (:file "euler-20")
               (:file "euler-21" :depends-on ("common"))
               (:file "euler-22" :depends-on ("common"))
               (:file "euler-23" :depends-on ("common"))
               (:file "euler-24" :depends-on ("common"))
               (:file "euler-25")
               (:file "euler-26")
               (:file "euler-27" :depends-on ("common"))
               (:file "euler-28")
               (:file "euler-29")
               (:file "euler-30")
               (:file "euler-31" :depends-on ("common"))))
