echo '=================================='
echo '*          parallel-lint         *'
echo '=================================='
./vendor/bin/parallel-lint .

echo '=================================='
echo '*         phpstan analyze        *'
echo '=================================='
phpstan analyze . -l 1

echo '=================================='
echo '*          php-cs-fixer          *'
echo '=================================='
php-cs-fixer fix .

echo '=================================='
echo '*   local-php-security-checker   *'
echo '=================================='
local-php-security-checker --format=json

echo '=================================='
echo '*            phpcpd              *'
echo '=================================='
phpcpd .