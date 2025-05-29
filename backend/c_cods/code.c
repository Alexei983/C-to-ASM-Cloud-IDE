#include <stdint.h>
#include <stdio.h>
#include <sys/types.h>

typedef enum {
    FETCH,
    DECODE,
    READ_MEM,
    WRITE_MEM,
    LOAD_ACC,
    STORE_ACC,
    EXEC_ADD,
    EXEC_SUB,
    JMP_TO,
    CHECK_ZERO,
    INVERT_ACC,
    HALT_OP,
    NOP
} MicroOp;

typedef struct {
    uint8_t mar;
    uint8_t mdr;
    uint8_t pc;
    uint8_t mbr;
    uint8_t sp;
    uint8_t lv;
    uint8_t cpp;
    uint8_t tos;
    uint8_t opc;
    uint8_t h;
    uint8_t halted;
} cpu;

typedef enum {
    INST_NOP = 0,
    INST_LOAD = 1, // LOAD value → ACC
    INST_STORE = 2,  // ADD value → ACC
    INST_LOADI = 3,  // SUB value → ACC
    INST_ADD = 4,
    INST_SUB = 5,
    INST_AND = 6,
    INST_OR = 7,
    INST_XOR = 8,
    INST_NOT = 9,
    INST_JMP = 10,
    INST_JZ = 11,
    INST_JN = 12,
    INST_JC = 13,
    INST_CMP = 14,
    INST_HLT = 15,
    INST_HALT = 255
} Instruction;

uint8_t memory[256] = {
    INST_LOAD, 10,   // Загрузить 10 в ACC
    INST_ADD,  5,    // Прибавить 5
    INST_SUB,  3,    // Вычесть 3
    INST_HALT        // Остановиться
};

MicroOp microcode[][6] = {
    [INST_NOP]   = {FETCH, DECODE, NOP, NOP, NOP, NOP},

    [INST_LOAD]  = {FETCH, DECODE, READ_MEM, LOAD_ACC, NOP, NOP},       // ACC = MEM[operand]
    [INST_STORE] = {FETCH, DECODE, STORE_ACC, WRITE_MEM, NOP, NOP},     // MEM[operand] = ACC
    [INST_LOADI] = {FETCH, DECODE, LOAD_ACC, NOP, NOP, NOP},            // ACC = operand (не адрес, а значение)

    [INST_ADD]   = {FETCH, DECODE, READ_MEM, EXEC_ADD, NOP, NOP},       // ACC += MEM[operand]
    [INST_SUB]   = {FETCH, DECODE, READ_MEM, EXEC_SUB, NOP, NOP},       // ACC -= MEM[operand]

    [INST_AND]   = {FETCH, DECODE, READ_MEM, /* AND logic */ NOP, NOP}, // Придётся реализовать EXEC_AND
    [INST_OR]    = {FETCH, DECODE, READ_MEM, /* OR logic */ NOP, NOP},  // Придётся реализовать EXEC_OR
    [INST_XOR]   = {FETCH, DECODE, READ_MEM, /* XOR logic */ NOP, NOP}, // Придётся реализовать EXEC_XOR

    [INST_NOT]   = {FETCH, DECODE, INVERT_ACC, NOP, NOP, NOP},          // ACC = ~ACC

    [INST_JMP]   = {FETCH, DECODE, JMP_TO, NOP, NOP, NOP},              // PC = operand
    [INST_JZ]    = {FETCH, DECODE, CHECK_ZERO, JMP_TO, NOP, NOP},       // if (ACC == 0) PC = operand
    [INST_JN]    = {FETCH, DECODE, /*CHECK_NEG*/ JMP_TO, NOP, NOP},    // Требуется CHECK_NEG
    [INST_JC]    = {FETCH, DECODE, /*CHECK_CARRY*/ JMP_TO, NOP, NOP},  // Требуется CHECK_CARRY

    [INST_CMP]   = {FETCH, DECODE, READ_MEM, EXEC_SUB, NOP, NOP},       // Сравнение: влияет только на флаги

    [INST_HLT]   = {FETCH, DECODE, HALT_OP, NOP, NOP, NOP},
    [INST_HALT]  = {HALT_OP, NOP, NOP, NOP, NOP, NOP} // альтернативный HLT
};


void main(){
    printf("Hello World");
}
