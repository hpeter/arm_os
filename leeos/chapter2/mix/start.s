/*
start.s:
Copyright (C) 2009  david leels <davidontech@gmail.com>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see http://www.gnu.org/licenses/.
*/

.arch armv4
.global _start

.equ REG_FIFO,	0x50000020

.text
.align 2

_start:
	ldr r0,=REG_FIFO
	adr	r1,.L0
	bl helloworld
.L1:
	b	.L1

.align 2
.L0:	
	.ascii	"helloworld\n\0"
