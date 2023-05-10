import sys
import random

x = 0
x1 = -1
y = 0
pointer = 0

# with open('files\\hardcode.txt', 'w') as f:
#     sys.stdout = f
#     for k in range(8):
#         for j in range(8):
#             print(f"if ((x_coord >= GRADIENT_START_X + {x}) && (x_coord < GRADIENT_START_X + {x+16}) && (y_coord >= GRADIENT_START_Y + {y}) && (y_coord < GRADIENT_START_Y + {y+16}))begin col_pointer <= {pointer}; end else")
#             x = x + 16
#             pointer = pointer + 1
#         y = y + 16
#         x = 0

# with open('files\\hardcode_2.txt', 'w') as f:
#     sys.stdout = f
#     for k in range(16):
#         for j in range(16):
#             print(f"if ((x_coord >= BORDER + {x1}) && (x_coord < BORDER + {x1+88}) && (y_coord >= BORDER + BANNER_HEIGHT + {y}) && (y_coord < BORDER + BANNER_HEIGHT + {y+47}))begin col_pointer <= pointer_array[{j}][{k}]; end else")
#             x1 = x1 + 88
#             pointer = pointer + 1
#         y = y + 47
#         x1 = -1

# with open('files\\hardcode_2.txt', 'w') as f:
#     sys.stdout = f
#     for k in range(256):
#         print(f"data[{k}] = {random.randint(0,63)};")

# with open('files\\hardcode_2.txt', 'w') as f:
#     sys.stdout = f
#     print("begin")
#     for k in range(16):
#         for j in range(16):
#             # print(f"if(pointer_array[{k}][{j}] == selected_pointer) pointer_array[{k}][{j}] <= selected_pointer;")
#             print(f"\tpointer_array[{j}][{k}] <= 7'd{random.randint(0,63)};")
#     print("end")

# with open('files\\hardcode_2.txt', 'w') as f:
#     sys.stdout = f
#     for k in range(16):
#         for j in range(16):
#             # print(f"\tpointer_array[{j}][{k}] <= {random.randint(0,63)};")
#             if (x == 7 and y == 6) or (x == 7 and y == 7) or (x == 7 and y == 8) or (x == 7 and y == 9) or (x == 8 and y == 6) or (x == 8 and y == 7) or (x == 8 and y == 8) or (x == 8 and y == 9):
#                 print(f"\tconnected_array[{x}][{y}] <= 1;")
#                 x = x + 1
#             else:
#                 print(f"\tconnected_array[{x}][{y}] <= 0;")
#                 x = x + 1
#         y = y + 1
#         x = 0
