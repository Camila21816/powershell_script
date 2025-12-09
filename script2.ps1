# Habilita el uso de ventanas y controles gráficos
Add-Type -AssemblyName System.Windows.Forms
# Habilita tamaños, colores y posiciones
Add-Type -AssemblyName System.Drawing

# Crea la ventana principal
$form = New-Object System.Windows.Forms.Form
# Título que aparece arriba
$form.Text = "Input Form"
# Tamaño de la ventana (ancho x alto)
$form.Size = New-Object System.Drawing.Size(500,250)
# La muestra centrada en la pantalla
$form.StartPosition = "CenterScreen"

# ----- Etiqueta 1 -----
$textLabel1 = New-Object System.Windows.Forms.Label
# Texto que muestra
$textLabel1.Text = "Input 1:"
# Posición dentro del formulario
$textLabel1.Left = 20
$textLabel1.Top = 20
# Ancho del texto
$textLabel1.Width = 120

# ----- Etiqueta 2 -----
$textLabel2 = New-Object System.Windows.Forms.Label
# Texto que muestra
$textLabel2.Text = "Input 2:"
# Posición
$textLabel2.Left = 20
$textLabel2.Top = 60
$textLabel2.Width = 120

# ----- Etiqueta 3 -----
$textLabel3 = New-Object System.Windows.Forms.Label
# Texto que muestra
$textLabel3.Text = "Input 3:"
# Posición
$textLabel3.Left = 20
$textLabel3.Top = 100
$textLabel3.Width = 120

# ----- Cuadro de texto 1 -----
$textBox1 = New-Object System.Windows.Forms.TextBox
# Posición del cuadro
$textBox1.Left = 150
$textBox1.Top = 20
$textBox1.Width = 200

# ----- Cuadro de texto 2 -----
$textBox2 = New-Object System.Windows.Forms.TextBox
$textBox2.Left = 150
$textBox2.Top = 60
$textBox2.Width = 200

# ----- Cuadro de texto 3 -----
$textBox3 = New-Object System.Windows.Forms.TextBox
$textBox3.Left = 150
$textBox3.Top = 100
$textBox3.Width = 200

# Valor por defecto para cada textbox
$defaultValue = ""
$textBox1.Text = $defaultValue
$textBox2.Text = $defaultValue
$textBox3.Text = $defaultValue

# ----- Botón OK -----
$button = New-Object System.Windows.Forms.Button
# Posición del botón
$button.Left = 360
$button.Top = 140
# Tamaño y texto del botón
$button.Width = 100
$button.Text = "OK"

# Evento que ocurre al pulsar el botón
$button.Add_Click({
    # Guarda lo que escribió el usuario
    $form.Tag = @{
        Box1 = $textBox1.Text
        Box2 = $textBox2.Text
        Box3 = $textBox3.Text
    }
    # Cierra la ventana
    $form.Close()
})

# Agrega todos los elementos visuales a la ventana
$form.Controls.Add($button)
$form.Controls.Add($textLabel1)
$form.Controls.Add($textLabel2)
$form.Controls.Add($textLabel3)
$form.Controls.Add($textBox1)
$form.Controls.Add($textBox2)
$form.Controls.Add($textBox3)

# Muestra la ventana y espera hasta que se cierre
$form.ShowDialog() | Out-Null

# Devuelve los textos escritos por el usuario
return $form.Tag.Box1, $form.Tag.Box2, $form.Tag.Box3
