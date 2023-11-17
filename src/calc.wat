(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (func $add (type 0) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.add)
  (func $subtract (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.sub)
  (func $multiply (type 0) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.mul)
  (func $divide (type 0) (param i32 i32) (result i32)
    (local i32)
    i32.const 0
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.const -2147483648
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.const -1
        i32.eq
        br_if 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.div_s
      local.set 2
    end
    local.get 2)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 16)
  (global $__stack_pointer (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1048576))
  (global (;2;) i32 (i32.const 1048576))
  (export "memory" (memory 0))
  (export "add" (func $add))
  (export "subtract" (func $subtract))
  (export "multiply" (func $multiply))
  (export "divide" (func $divide))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2)))
