if exists("b:current_syntax")
	finish
endif

syntax keyword ciderStatement return var mutate set change unreachable yield
syntax match ciderStatement "\v<def>"
highlight link ciderStatement Statement

syntax match ciderTypedef "\v<type>"
syntax match ciderTypedef "\v<type> +<alias>"
syntax match ciderTypedef "\v<type> +<def>"
syntax match ciderTypedef "\v<can> +<be>"

syntax keyword ciderTypedef alias has is union join struct varies matches
highlight link ciderTypedef Typedef

syntax keyword ciderKeyword while for break continue pass
highlight link ciderKeyword Keyword

syntax keyword ciderConditional when if else elif match case
highlight link ciderConditional Conditional

syntax keyword ciderPreproc link module to
highlight link ciderPreproc Preproc

syntax keyword ciderFunction main print mask class mutation read write push pop
highlight link ciderFunction Function

syntax keyword ciderType int str bool float void ref
syntax match ciderType "\v<any>( +<\w+>)?"
highlight link ciderType Type

syntax keyword ciderStorageClass named mutable lazy
highlight link ciderStorageClass StorageClass

syntax match ciderComment "\v#.*$"
highlight link ciderComment Comment

syntax keyword ciderConstant true false null self
highlight link ciderConstant Constant

syntax keyword ciderOperator and or not in
syntax match ciderOperator "\v\*"
syntax match ciderOperator "\v\;"
syntax match ciderOperator "\v\["
syntax match ciderOperator "\v\]"
syntax match ciderOperator "\v\{"
syntax match ciderOperator "\v\."
syntax match ciderOperator "\v\}"
syntax match ciderOperator "\v\("
syntax match ciderOperator "\v\)"
syntax match ciderOperator "\v/"
syntax match ciderOperator "\v\+"
syntax match ciderOperator "\v-"
syntax match ciderOperator "\v\%"
syntax match ciderOperator "\v\*\="
syntax match ciderOperator "\v/\="
syntax match ciderOperator "\v\+\="
syntax match ciderOperator "\v-\="
syntax match ciderOperator "\v\%\="
syntax match ciderOperator "\v\="
syntax match ciderOperator "\v\=\="
syntax match ciderOperator "\v\!\="
syntax match ciderOperator "\v\<"
syntax match ciderOperator "\v\>"
syntax match ciderOperator "\v\<<"
syntax match ciderOperator "\v\>>"
syntax match ciderOperator "\v\<\="
syntax match ciderOperator "\v\>\="
highlight link ciderOperator Operator

syntax region ciderString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link ciderString String

syntax match ciderTesting "\v# test: skip"
syntax match ciderTesting "\v# test: pass"
syntax match ciderTesting "\v# error: .*"
syntax match ciderTesting "\v# unseen: .*"
highlight link ciderTesting Operator

let b:current_syntax = "cider"
