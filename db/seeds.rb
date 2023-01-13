@user = User.create(
  name: 'Paul',
  email: 'oluola@dev.com',
  password: '12345678',
  password_confirmation: '12345678'
)

@group = Group.create(
  author_id: @user.id,
  name: 'Food',
  icon: '🍔'
)
@group2 = Group.create(
  author_id: @user.id,
  name: 'Travels',
  icon: '✈️'
)

@expense = Expense.create(
  author_id: @user.id,
  name: 'Burger',
  amount: 100
)
@expense2 = Expense.create(
  author_id: @user.id,
  name: 'Soda',
  amount: 100
)
@expense3 = Expense.create(
  author_id: @user.id,
  name: 'Canada',
  amount: 100
)

@group_expense = GroupExpense.create(
  group_id: @group.id,
  expense_id: @expense.id
)
@group_expense2 = GroupExpense.create(
  group_id: @group.id,
  expense_id: @expense2.id
)
@group_expense3 = GroupExpense.create(
  group_id: @group2.id,
  expense_id: @expense3.id
)
