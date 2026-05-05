import data
import sandwich_maker
import cashier


# Make an instance of other classes here
resources = data.resources
recipes = data.recipes
sandwich_maker_instance = sandwich_maker.SandwichMaker(resources)
cashier_instance = cashier.Cashier()


def main():
    is_on = True
    while is_on:
        choice = input("What would you like? (small/ medium/ large/ off/ report): ")
        if choice == "off":
            is_on = False
        elif choice == "report":
            print(f"Bread: {sandwich_maker_instance.machine_resources['bread']} slice(s)")
            print(f"Ham: {sandwich_maker_instance.machine_resources['ham']} slice(s)")
            print(f"Cheese: {sandwich_maker_instance.machine_resources['cheese']} pound(s)")
        elif choice in recipes:
            recipe = recipes[choice]
            if sandwich_maker_instance.check_resources(recipe["ingredients"]):
                coins = cashier_instance.process_coins()
                if cashier_instance.transaction_result(coins, recipe["cost"]):
                    sandwich_maker_instance.make_sandwich(choice, recipe["ingredients"])

if __name__=="__main__":
    main()
