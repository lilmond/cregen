import random
first_6=536595 # IIN For Banking Industry(6 digits)
def luhn():
    global first_6  
    card_no = [int(i) for i in str(first_6)]  # To find the checksum digit on
    print(f"card_no = {card_no}")
    card_num = [int(i) for i in str(first_6)]  # Actual account number
    print(f"card_num = {card_num}")
    seventh_15 = random.sample(range(9), 9)  # Acc no (9 digits)
    print(f"seventh_15 = {seventh_15}")
    for i in seventh_15:
        card_no.append(i)
        card_num.append(i)
    print(f"card_nu = {card_no}")
    print(f"card_num = {card_num}")
    for t in range(0, 15, 2):  # odd position digits
        card_no[t] = card_no[t] * 2
    print(f"card_no = {card_no}")
    for i in range(len(card_no)):
        if card_no[i] > 9:  # deduct 9 from numbers greater than 9
            card_no[i] -= 9
    print(f"card_no = {card_no}")
    s = sum(card_no)
    print(f"s = {s}")
    mod = s % 10
    print(f"mod = {mod}")
    check_sum = 0 if mod == 0 else (10 - mod)
    print(f"check_sum = {check_sum}")
    card_num.append(check_sum)
    print(f"card_num = {card_num}")
    card_num = [str(i) for i in card_num]
    print(f"card_num = {card_num}")
    return ''.join(card_num)


print(luhn())
