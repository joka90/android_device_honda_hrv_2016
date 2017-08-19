c0797ce8:       e59f426c        ldr     r4, [pc, #620]  ; 0xc0797f5c
; r4 is pc-8+620, check what data is on that address (not disasm code)
c0797f5c:       c08c80b4        strhgt  r8, [ip], r4
;------data -------^
;OK, you found "ptmx_fops = R4 + 16 = 0xc08c80b4 + 16 = 3230433460+16 = 3230433476 = 0xC08C80C4 "
; --------------------------------------------*----------------------------------------------^
; --- +16 eqal to bX to cX, seems all rigth
--
c0797e98:       e5940008        ldr     r0, [r4, #8]
c0797e9c:       ebecd8aa        bl      0xc02ce14c
c0797ea0:       e1500006        cmp     r0, r6
c0797ea4:       0a000001        beq     0xc0797eb0
c0797ea8:       e59f00d4        ldr     r0, [pc, #212]  ; 0xc0797f84
c0797eac:       ebf87e8e        bl      0xc05b78ec
c0797eb0:       e594000c        ldr     r0, [r4, #12]
c0797eb4:       ebecd8a4        bl      0xc02ce14c
c0797eb8:       e3500000        cmp     r0, #0
c0797ebc:       0a000001        beq     0xc0797ec8
c0797ec0:       e59f00c0        ldr     r0, [pc, #192]  ; 0xc0797f88
c0797ec4:       ebf87e88        bl      0xc05b78ec
c0797ec8:       e59f00bc        ldr     r0, [pc, #188]  ; 0xc0797f8c
c0797ecc:       ebe33ec6        bl      0xc00679ec
c0797ed0:       e2840010        add     r0, r4, #16     ; R0 = &ptmx_fops
; Now you know "ptmx_fops = R4 + 16", then search backword to get is R4
c0797ed4:       ebecd53e        bl      0xc02cd3d4 ; tty_default_fops(&ptmx_fops)
c0797ed8:       e59f30b0        ldr     r3, [pc, #176]  ; 0xc0797f90 ; R3 = ptmx_open
c0797edc:       e2840078        add     r0, r4, #120    ; 0x78 ; R0 = &ptmx_cdev
c0797ee0:       e2841010        add     r1, r4, #16            ; R1 = &ptmx_fops
c0797ee4:       e584303c        str     r3, [r4, #60]   ; 0x3c ; ptmx_fops.open = ptmx_open;
c0797ee8:       ebe5ac30        bl      0xc0102fb0 ; cdev_init(&ptmx_cdev, &ptmx_fops)
c0797eec:       e3001002        movw    r1, #2
c0797ef0:       e2840078        add     r0, r4, #120    ; 0x78
c0797ef4:       e3401050        movt    r1, #80 ; 0x50
c0797ef8:       e3a02001        mov     r2, #1
c0797efc:       ebe5ad0b        bl      0xc0103330
c0797f00:       e2504000        subs    r4, r0, #0
c0797f04:       1a000006        bne     0xc0797f24
c0797f08:       e3000002        movw    r0, #2
c0797f0c:       e3a01001        mov     r1, #1
c0797f10:       e3400050        movt    r0, #80 ; 0x50
c0797f14:       e59f2078        ldr     r2, [pc, #120]  ; 0xc0797f94
c0797f18:       ebe5ae15        bl      0xc0103774
c0797f1c:       e3500000        cmp     r0, #0
c0797f20:       aa000001        bge     0xc0797f2c
c0797f24:       e59f006c        ldr     r0, [pc, #108]  ; 0xc0797f98
c0797f28:       ebf87e6f        bl      0xc05b78ec
c0797f2c:       e59f0068        ldr     r0, [pc, #104]  ; 0xc0797f9c
c0797f30:       e3002002        movw    r2, #2
c0797f34:       e59fc064        ldr     ip, [pc, #100]  ; 0xc0797fa0
c0797f38:       e3402050        movt    r2, #80 ; 0x50
--

