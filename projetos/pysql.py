import pyodbc

# Defina os parâmetros de conexão
server = ''  # Exemplo: 'localhost\SQLEXPRESS'
database = 'PythonSQL'
username = 'sa'
password = ''

# String de conexão
conn_str = f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={server};DATABASE={database};UID={username};PWD={password}'

# Conectando ao banco de dados
try:
    conn = pyodbc.connect(conn_str)
    cursor = conn.cursor()
    print("Conexão bem-sucedida!")
    
    id = 4
    cliente = "Teste"
    produto = "Carro"
    data = "25/08/2021"
    preco = 5000
    quantidade = 1
    
    # Exemplo de consulta
    cursor.execute(f"""
        INSERT INTO Vendas(id_venda, cliente, produto, data_venda, preco, quantidade)
        VALUES
        ({id}, '{cliente}', '{produto}', '{data}', {preco}, {quantidade})
        """
    )
    
    # Salvar as alterações, esse comando precisa ser executado pra qualquer coisa que acrescente ou altere uma tabela!
    cursor.commit()

    # Fechar conexão
    cursor.close()
    conn.close()

except Exception as e:
    print(f"Erro ao conectar: {e}")
