(module
  (type (;0;) (func))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32 i32) (result i32)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func (param i32) (result i64)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32) (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (result i64)))
  (type (;10;) (func (param i64)))
  (type (;11;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (import "env" "signalError" (func (;0;) (type 4)))
  (import "env" "managedSCAddress" (func (;1;) (type 2)))
  (import "env" "smallIntGetUnsignedArgument" (func (;2;) (type 5)))
  (import "env" "getNumArguments" (func (;3;) (type 1)))
  (import "env" "mBufferSetBytes" (func (;4;) (type 6)))
  (import "env" "mBufferStorageLoad" (func (;5;) (type 3)))
  (import "env" "mBufferGetLength" (func (;6;) (type 7)))
  (import "env" "mBufferGetByteSlice" (func (;7;) (type 8)))
  (import "env" "mBufferAppendBytes" (func (;8;) (type 6)))
  (import "env" "managedSignalError" (func (;9;) (type 2)))
  (import "env" "bigIntGetExternalBalance" (func (;10;) (type 4)))
  (import "env" "checkNoPayment" (func (;11;) (type 0)))
  (import "env" "getBlockTimestamp" (func (;12;) (type 9)))
  (import "env" "mBufferStorageStore" (func (;13;) (type 3)))
  (import "env" "bigIntFinishUnsigned" (func (;14;) (type 2)))
  (import "env" "smallIntFinishUnsigned" (func (;15;) (type 10)))
  (import "env" "getNumESDTTransfers" (func (;16;) (type 1)))
  (import "env" "managedCaller" (func (;17;) (type 2)))
  (import "env" "managedTransferValueExecute" (func (;18;) (type 11)))
  (import "env" "mBufferGetBytes" (func (;19;) (type 3)))
  (func (;20;) (type 4) (param i32 i32)
    local.get 0
    local.get 1
    call 0
    unreachable)
  (func (;21;) (type 1) (result i32)
    (local i32)
    i32.const 1048732
    i32.const 1048732
    i32.load
    i32.const 1
    i32.sub
    local.tee 0
    i32.store
    local.get 0)
  (func (;22;) (type 2) (param i32)
    call 3
    local.get 0
    i32.eq
    if  ;; label = @1
      return
    end
    i32.const 1048613
    i32.const 25
    call 0
    unreachable)
  (func (;23;) (type 3) (param i32 i32) (result i32)
    (local i32)
    call 21
    local.tee 2
    local.get 0
    local.get 1
    call 4
    drop
    local.get 2)
  (func (;24;) (type 1) (result i32)
    (local i32)
    call 21
    local.tee 0
    i32.const 1048716
    i32.const 0
    call 4
    drop
    local.get 0)
  (func (;25;) (type 5) (param i32) (result i64)
    (local i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 0
    call 21
    local.tee 1
    call 5
    drop
    local.get 1
    call 6
    local.tee 0
    i32.const 9
    i32.lt_u
    if  ;; label = @1
      local.get 1
      i32.const 0
      local.get 0
      local.get 2
      i32.const 8
      i32.add
      call 7
      drop
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 8
        i32.add
        local.set 1
        loop  ;; label = @3
          local.get 0
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.const 1
          i32.sub
          local.set 0
          local.get 1
          i64.load8_u
          local.get 3
          i64.const 8
          i64.shl
          i64.or
          local.set 3
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          br 0 (;@3;)
        end
        unreachable
      end
      local.get 2
      i32.const 16
      i32.add
      global.set 0
      local.get 3
      return
    end
    i32.const 1048652
    i32.const 22
    call 23
    local.tee 0
    i32.const 1048638
    i32.const 14
    call 8
    drop
    local.get 0
    call 9
    unreachable)
  (func (;26;) (type 1) (result i32)
    i32.const 1048674
    i32.const 8
    call 23)
  (func (;27;) (type 1) (result i32)
    (local i32 i32)
    call 21
    local.tee 0
    call 1
    local.get 0
    call 21
    local.set 0
    i32.const 1048736
    call 19
    drop
    i32.const 1048736
    local.get 0
    call 10
    local.get 0)
  (func (;28;) (type 0)
    (local i64 i64 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    call 11
    i32.const 1
    call 22
    i32.const 0
    call 2
    local.set 0
    call 12
    local.set 1
    call 26
    local.get 3
    local.get 0
    local.get 1
    i64.add
    local.tee 0
    i64.const 56
    i64.shl
    local.get 0
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    i64.or
    local.get 0
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 0
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 0
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 0
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 0
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 0
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=8
    block  ;; label = @1
      local.get 0
      i64.eqz
      if  ;; label = @2
        i32.const 1048716
        local.set 4
        br 1 (;@1;)
      end
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 8
            i32.ne
            if  ;; label = @5
              local.get 3
              i32.const 8
              i32.add
              local.get 2
              i32.add
              local.tee 4
              i32.load8_u
              i32.eqz
              br_if 2 (;@3;)
              local.get 2
              i32.const 9
              i32.ge_u
              br_if 1 (;@4;)
              i32.const 8
              local.get 2
              i32.sub
              local.set 2
              br 4 (;@1;)
            end
            call 34
            unreachable
          end
          call 34
          unreachable
        end
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 0 (;@2;)
      end
      unreachable
    end
    call 21
    local.tee 6
    local.get 4
    local.get 2
    call 4
    drop
    local.get 6
    call 13
    drop
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;29;) (type 0)
    call 11
    i32.const 0
    call 22
    call 27
    call 14)
  (func (;30;) (type 0)
    call 11
    i32.const 0
    call 22
    call 26
    call 25
    call 15)
  (func (;31;) (type 0)
    block  ;; label = @1
      call 16
      i32.eqz
      if  ;; label = @2
        i32.const 0
        call 22
        call 12
        call 26
        call 25
        i64.ge_u
        br_if 1 (;@1;)
        return
      end
      i32.const 1048576
      i32.const 37
      call 0
      unreachable
    end
    i32.const 1048682
    i32.const 19
    call 20
    unreachable)
  (func (;32;) (type 0)
    (local i32)
    call 11
    i32.const 0
    call 22
    call 12
    call 26
    call 25
    i64.le_u
    if  ;; label = @1
      i32.const 1048701
      i32.const 13
      call 20
      unreachable
    end
    call 21
    local.tee 0
    call 17
    local.get 0
    call 27
    i64.const 0
    call 24
    call 24
    call 18
    drop)
  (func (;33;) (type 0)
    nop)
  (func (;34;) (type 0)
    i32.const 1048716
    i32.const 14
    call 0
    unreachable)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1048768))
  (global (;2;) i32 (i32.const 1048768))
  (export "memory" (memory 0))
  (export "init" (func 28))
  (export "getCurrentFunds" (func 29))
  (export "getDeadline" (func 30))
  (export "ping" (func 31))
  (export "pong" (func 32))
  (export "callBack" (func 33))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data (;0;) (i32.const 1048576) "function does not accept ESDT paymentwrong number of argumentsinput too longstorage decode error: deadlinedeadline has passedcant pong yet\00\00panic occurred")
  (data (;1;) (i32.const 1048732) "\9c\ff\ff\ff"))
