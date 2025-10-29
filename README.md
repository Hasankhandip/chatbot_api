# ovo_panel - OvoSolution Starter Kit Build with Laravel

**ovo_panel** is a powerful and flexible Laravel starter kit designed to accelerate the development of web applications with essential modules and configurations out of the box. It includes everything you need for user management, payment integration, KYC verification, deposits, and more, providing a solid foundation to build scalable applications quickly. Ideal for developers aiming to reduce setup time, **ovo_panel** streamlines repetitive tasks and offers robust, secure features, making it an ideal choice for creating admin dashboards, e-commerce systems, and financial platforms.

# Conventions

## 1. Convention for Printing Strings

- Use `@lang()` for hardcoded strings and the `__()` function for translating dynamic values in Blade files.
- Use the `trans()` function for translations in controllers, models, or plain PHP files.
- Database values and input field values should not be translated.

## 2. Convention for Printing Numbers

- If the number represents an amount, print it using the `showAmount` helper function.
- If the number is printed in an input field, print it using the `getAmount` helper function.
- If the number is a percentage, print it using the `getAmount` helper function.
- Numbers should not be translatable.

## 3. Convention for Printing Date/Time

- Use the `showDateTime` helper function to format dates & time.
- Use the `showDateTime` helper function to format dates and pass the specific date format.
- Use the `showDateTime` helper function to format time and pass the specific time format.
- Use the `diffForHumans` helper function for get the humans difference between two date .

## 4. JavaScript Conventions

- Do not use `.click`, `.submit`, etc., directly. Instead, use the `.on()` method, like `$.on('click')`, `$.on('submit')`, etc.
- Use the jQuery shorthand version and enable strict mode.

## 5. Database Conventions

We follow specific database conventions for table columns:

| Purpose             | Data Type        | Length,Default |
| ------------------- | ---------------- | -------------- |
| For string          | `VARCHAR`        | 40, 255, NULL  |
| For foreign keys    | `INT` (unsigned) | 10, 0          |
| For integer numbers | `INT`            | 11, 0          |
| For amounts/doubles | `DECIMAL`        | 28,8, 0        |
| For percentages     | `DECIMAL`        | 5,2, 0         |
| For long text       | `LONGTEXT`       | ---,NULL       |
| for status/boolean  | `TINY`           | 1,----         |

## 6. Controller Conventions

- In general, avoid using `insert`, `create`, or `update` for data-saving operations. Use the `save` method for both saving and updating data.
- Use the `$request validate` method for data validation and `Validator facade` for data validation on API.

## 7. Variable and Function/Method Naming Conventions

- Do not use `snake_case` or other cases for variable, function, or method names. Always use `camelCase` for variable, function, and method names.

## 8. File System Conventions

- Use the `fileUploader` helper function to upload any file/images to the system.
- Use the `getImage` helper function to display any image to the system.
- Use the `frontendImage` helper function to display any frontend image to the system or web template/theme.

## 9. Notification System Conventions

- Use the `notify` helper function to send the email,sms, or push notification to the user from the system.
- Disable currency `currencyFormat` parameter when it used for the replace shortcodes value under the `notify` helper function.

## 10. Api Convention

- Use the `apiResponse` helper function to send any api response from the system.
- There is no need to declare the route name when it is the API rout

## 11. Routing Convention

- Resource route is not allowed
- All route has separate names except the API route
- Try your best to use routing groups

## 11. Ui Convention to admin panel

- use `<x-admin.ui.card></x-admin.ui.card>` component for generate card in admin panel
- use `<x-admin.ui.table></x-admin.ui.table>` component for generate table in admin panel
- use `<x-admin.ui.table.header></x-admin.ui.table.header>` component for generate table header in admin panel
- use `<x-admin.ui.table.footer></x-admin.ui.table.footer>` component for generate table footer in admin panel
- use `<x-admin.ui.table.body></x-admin.ui.table.body>` component for generate table body in admin panel
- use `<x-admin.ui.btn.details />` component for generate details button in admin panel
- use `<x-admin.ui.btn.details />` component for generate details button in admin panel
- use `<x-admin.ui.btn.add />` component for generate add button in admin panel
- use `<x-admin.ui.btn.edit />` component for generate edit button in admin panel
- use `<x-back_btn />` component for generate back button in admin panel
- use `<x-admin.ui.modal></x-admin.ui.modal>` component for generate modal in admin panel
- use `<x-admin.ui.widget.{widgetNumber} />` component for generate widget in admin panel

## 12. Other Convention
- use `<x-confirmation-modal/>` component for generate confirmation modal in the system
- use `paginateLinks()` helper function for generate pagination links in the system

**ovo_panel** streamlines development with essential features and standardized conventions, ensuring code consistency, security, and scalability. By following these best practices, developers can focus on building robust applications quickly, saving time on repetitive tasks while delivering high-quality, professional solutions.
