;;;;;;;;;;;;;;;;;;
;; My Templates ;;
;;;;;;;;;;;;;;;;;;
(deftemplate reason
    (slot answer))
(deftemplate learningMethod
    (slot method))
(deftemplate car
    (slot gear))
(deftemplate earnings
    (slot start))
(deftemplate platform
    (slot field))
(deftemplate thoughts
    (slot opinion))
(deftemplate mobile
    (slot os))
(deftemplate web
    (slot end))
(deftemplate toy
    (slot toy))
;;;;;;;;;;;;;;;;;;;
;; starting rule ;;
;;;;;;;;;;;;;;;;;;;
(defrule starter
    =>
    (printout t "Why do you to learn programming ?" crlf "for_my_kids" crlf "don't_know" crlf "interested" crlf "for_money" crlf)
    (bind ?answer (read))
    (if (= ?answer "for_my_kids")then 
        (assert (reason(answer kids)))
        else 
        (if (= ?answer "don't_know")then
            (assert (reason(answer unknow)))
            else
            (if (= ?answer "interested")then
                (assert (reason(answer interested)))
                else
                (if (= ?answer "for_money")then
                    (assert (reason(answer money))))))))
;;;;;;;;;;;;;;;;;;
;; Python rules ;;
;;;;;;;;;;;;;;;;;;
(defrule python1 
    (reason(answer kids))
    =>
    (printout t "Choose Python"))
(defrule python2 
    (reason(answer unknown))
    =>
    (printout t "Choose Python"))
(defrule python3 
    (learningMethod(method best))
    =>
    (printout t "Choose Python" crlf))
(defrule python4
    (reason(answer money))
    (earnings(start idea))
    (platform(field web))
    (toy(toy lego))
    =>
    (printout t "Choose Python" crlf))
(defrule python5
    (reason(answer money))
    (earnings(start job))
    (platform(field bigco))
    (thoughts(opinion facebook))
    =>
    (printout t "Choose Python" crlf))
(defrule python6
    (reason(answer money))
    (earnings(start job))
    (platform(field bigco))
    (thoughts(opinion google))
    =>
    (printout t "Choose Python" crlf))
;;;;;;;;;;;;;;
;; C# rules ;;
;;;;;;;;;;;;;;
(defrule cs1
    (reason(answer money))
    (earnings(start job))
    (platform(field enterprise))
    (thoughts(opinion microsoft))
    =>
    (printout t "Choose C#" crlf))
(defrule cs2
    (reason(answer money))
    (earnings(start job))
    (platform(field bigco))
    (thoughts(opinion microsoft))
    =>
    (printout t "Choose C#" crlf))
(defrule cs3
    (reason(answer money))
    (earnings(start job))
    (platform(field web))
    (web(end back))
    (thoughts(opinion microsoft))
    =>
    (printout t "Choose C#" crlf))
;;;;;;;;;;;;;;;
;; C++ rules ;;
;;;;;;;;;;;;;;;
(defrule cpp1 
    (reason(answer interested))
    (learningMethod(method master))
    =>
    (printout t "Choose C++" crlf))
(defrule cpp2
    (reason(answer money))
    (earnings(start job))
    (platform(field gaming))
    =>
    (printout t "Choose c++" crlf)
    )
;;;;;;;;;;;;;;;;
;; Java rules ;;
;;;;;;;;;;;;;;;;
(defrule java1
    (reason(answer interested))
    (learningMethod(method hard))
    (car(gear auto))
    =>
    (printout t "Choose Java" crlf))
(defrule java2
    (reason(answer money))
    (earnings(start job))
    (platform(field enterprise))
    (thoughts(opinion ~microsoft))
    =>
    (printout t "Choose Java" crlf))
(defrule java3
    (reason(answer money))
    (earnings(start job))
    (platform(field mobile))
    (mobile(os android))
    =>
    (printout t "Choose Java" crlf))
(defrule java4
    (reason(answer money))
    (earnings(start idea))
    (platform(field mobile))
    (mobile(os android))
    =>
    (printout t "Choose Java" crlf))
(defrule java5
    (reason(answer money))
    (earnings(start job))
    (platform(field web))
    (web(end back))
    (thoughts(opinion ~microsoft))
    =>
    (printout t "Java" crlf)
    )
;;;;;;;;;;;;
;; C rule ;;
;;;;;;;;;;;;
(defrule c1
    (reason(answer interested))
    (learningMethod(method hard))
    (car(gear manual))
    =>
    (printout t "Choose C" crlf))
;;;;;;;;;;;;;;;;;
;; Swift rules ;;
;;;;;;;;;;;;;;;;;
(defrule swift1
    (reason(answer money))
    (earnings(start job))
    (platform(field bigco))
    (thoughts(opinion apple))
    =>
    (printout t "Choose Swift" crlf))
(defrule swift2
    (reason(answer money))
    (earnings(start job))
    (platform(field mobile))
    (mobile(os ios))
    =>
    (printout t "Choose Swift" crlf))
(defrule swift3
    (reason(answer money))
    (earnings(start idea))
    (platform(field mobile))
    (mobile(os ios))
    =>
    (printout t "Choose Swift" crlf))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; some programming languages rules ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule ruby 
    (reason(answer money))
    (earnings(start idea))
    (platform(field web))
    (toy(toy playdoh))
    =>
    (printout t "Choose Ruby" crlf))

(defrule php 
    (reason(answer money))
    (earnings(start idea))
    (platform(field web))
    (toy(toy ugly))
    =>
    (printout t "Choose PHP" crlf))
(defrule JS
    (reason(answer money))
    (earnings(start job))
    (platform(field web))
    (web(end front))
    =>
    (printout t "Choose JavaScript" crlf))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Getting some input from the user ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; pick the desired learning way if interested ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule interested-method
    (reason(answer interested)) 
    =>
    (printout t "How do you like to learn hard/best/master way ?" crlf)
    (bind ?method (read))
    (if (= ?method "best_way")then 
        (assert (learningMethod(method best)))
        else
        (if (= ?method "hard_way")then
            (assert (learningMethod(method hard)))
            else
            (if (= ?method "master")then
                (assert (learningMethod(method master)))))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; choosing between Java or C for interested people ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule java-c
    (reason(answer interested))
    (learningMethod(method hard))
    =>
    (printout t "Do you like an automatic or manual car ?" crlf)
    (bind ?gear (read))
    (if (= ?gear "auto")then
        (assert (car(gear auto)))
        else
        (if (= ?gear "manual"))then
        (assert (car(gear manual)))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; rule to decide how money will be earned ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule money-reason
    (reason(answer money))
    =>
    (printout t "Do you want a job or you have a startup idea ?" crlf)
    (bind ?start (read))
    (if (= ?start "idea")then
        (assert (earnings(start idea)))
        else
        (if (= ?start "job")then
            (assert(earnings(start job)))))
    )
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; rule to decide wanted platform/field for people interested in jobs ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule platform-job
    (reason(answer money))
    (earnings(start job))
    =>
    (printout t "In which field/platform would you like to work ?" crlf "gaming" crlf "web" crlf "enterprise" crlf "bigco" crlf "mobile_app" crlf)
    (bind ?field (read))
    (if (= ?field "gaming")then
        (assert (platform(field gaming)))
        else
        (if (= ?field "web")then
            (assert (platform(field web)))else
            (if (= ?field "enterprise")then
                (assert (platform(field enterprise)))
                else
                (if (= ?field "bigco")then
                    (assert (platform(field bigco)))
                    else
                    (if (= ?field "mobile_app")then
                        (assert (platform(field mobile)))))))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Discovering user's opinion on big companies ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule opinion
    (reason (answer money))
    =>
    (printout t "First of all which company is your favorite ?" crlf "facebook" crlf "google" crlf "apple" crlf "microsoft" crlf)
    (bind ?like (read))
    (assert (thoughts(opinion ?like)
    )))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; rule to discover the os of the mobile dev job  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule mobileOS
    (reason(answer money))
    (earnings(start job))
    (platform(field mobile))
    =>
    (printout t "For which mobile OS would you like to develop apps ?" crlf "ios" crlf "android" crlf )
    (bind ?os (read))
    (assert (mobile(os ?os))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; rule to discover user's desired web dev part ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;    
(defrule web-type
    (reason(answer money))
    (earnings(start job))
    (platform(field web))
    =>
    (printout t "Would u like back/front end ?" crlf)
    (bind ?end (read))
    (assert (web(end ?end))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; rule to decide the field of the startup idea ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule platform-idea
    (reason(answer money))
    (earnings(start idea))
    =>
    (printout t "In which field will be your idea ?"crlf)
    (bind ?field (read))
    (assert (platform(field ?field))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; choosing mobile os for idea ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule idea-mobile-os
    (reason(answer money))
    (earnings(start idea))
    (platform(field mobile))
    =>
    (printout t "For which mobile OS would you like to create your idea ?" crlf "android" crlf "ios" crlf )
    (bind ?os (read))
    (assert (mobile(os ?os))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Discovering user's favorite toy ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule idea-web-toy
    (reason(answer money))
    (earnings(start idea))
    (platform(field web))
    =>
    (printout t "What's your favorite toy lego/playdoh/ugly_toy ?" crlf )
    (bind ?toy (read))
    (assert (toy(toy ?toy))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(reset)
(run)



