import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns


def calcular_desvio_da_media(variavel, data):
    media = data[variavel].mean()
    data[f"{variavel} - DESVIO DA MEDIA"] = data.apply(
        lambda row: row[variavel] - media, axis=1
    ).astype(float)
    return data


def calcular_desvio_da_media_ao_quadrado(variavel, data):
    media = data[variavel].mean()
    data[f"{variavel} - DESVIO DA MEDIA AO QUADRADO"] = data.apply(
        lambda row: (row[variavel] - media) ** 2, axis=1
    ).astype(float)
    return data


def calcular_desvio_da_mediana_ao_quadrado(variavel, data):
    mediana = data[variavel].median()
    data[f"{variavel} - DESVIO DA MEDIANA"] = data.apply(
        lambda row: (row[variavel] - mediana) ** 2, axis=1
    ).astype(float)
    return data


def criar_grafico(data, variavel, nome_arquivo):
    plt.figure(figsize=(10, 10))
    sns.scatterplot(x="PRODUTO", y=variavel.upper(), hue="PRODUTO", data=data)

    # Adicionando título e rótulos aos eixos
    plt.title(f"Gráfico de Dispersão para {variavel.capitalize()}")
    plt.xlabel("Produto")
    plt.ylabel("Média")

    # Mostrando o gráfico
    plt.savefig(f"graficos/{nome_arquivo}")


# Lendo o arquivo
df = pd.read_csv("dados/probabilidade.csv", delimiter=";")

# Definindo quais produtos pegar
produtos = ["GASOLINA ADITIVADA", "OLEO DIESEL"]

# Pegando 10 amostras de cada produto
amostras_df = df[df["PRODUTO"].isin(produtos)].groupby("PRODUTO").sample(10)
amostras_df["PRECO MINIMO REVENDA"] = amostras_df["PRECO MINIMO REVENDA"].astype(float)
amostras_df["PRECO MEDIO REVENDA"] = amostras_df["PRECO MEDIO REVENDA"].astype(float)
amostras_df["PRECO MAXIMO REVENDA"] = amostras_df["PRECO MAXIMO REVENDA"].astype(float)

# Calcular desvio da média
amostras_df = calcular_desvio_da_media("PRECO MINIMO REVENDA", amostras_df)
amostras_df = calcular_desvio_da_media("PRECO MEDIO REVENDA", amostras_df)
amostras_df = calcular_desvio_da_media("PRECO MAXIMO REVENDA", amostras_df)

# Calcular desvio da média ao quadrado
amostras_df = calcular_desvio_da_media_ao_quadrado("PRECO MINIMO REVENDA", amostras_df)
amostras_df = calcular_desvio_da_media_ao_quadrado("PRECO MEDIO REVENDA", amostras_df)
amostras_df = calcular_desvio_da_media_ao_quadrado("PRECO MAXIMO REVENDA", amostras_df)

# Calcular desvio da mediana ao quadrado
amostras_df = calcular_desvio_da_mediana_ao_quadrado(
    "PRECO MINIMO REVENDA", amostras_df
)
amostras_df = calcular_desvio_da_mediana_ao_quadrado("PRECO MEDIO REVENDA", amostras_df)
amostras_df = calcular_desvio_da_mediana_ao_quadrado(
    "PRECO MAXIMO REVENDA", amostras_df
)

amostras_df.to_csv("dados/amostra.csv")

gasolina_aditivada_df = amostras_df[amostras_df["PRODUTO"] == "GASOLINA ADITIVADA"]
oleo_diesel_df = amostras_df[amostras_df["PRODUTO"] == "OLEO DIESEL"]

primeira_propriedade_gasolina = gasolina_aditivada_df[
    "PRECO MINIMO REVENDA - DESVIO DA MEDIA"
].sum()
segunda_proprieda_um_gasolina = gasolina_aditivada_df[
    "PRECO MINIMO REVENDA - DESVIO DA MEDIA AO QUADRADO"
].sum()
segunda_proprieda_dois_gasolina = gasolina_aditivada_df[
    "PRECO MINIMO REVENDA - DESVIO DA MEDIANA"
].sum()
print("GASOLINA ADITIVADA")
print(
    f"Primeira Propriedade: {primeira_propriedade_gasolina}\nSegunda Propriedade um: {segunda_proprieda_um_gasolina}\nSegunda Propriedade dois: {segunda_proprieda_dois_gasolina}"
)

primeira_propriedade_oleo = oleo_diesel_df[
    "PRECO MINIMO REVENDA - DESVIO DA MEDIA"
].sum()
segunda_proprieda_um_oleo = oleo_diesel_df[
    "PRECO MINIMO REVENDA - DESVIO DA MEDIA AO QUADRADO"
].sum()
segunda_proprieda_dois_oleo = oleo_diesel_df[
    "PRECO MINIMO REVENDA - DESVIO DA MEDIANA"
].sum()
print("OLEO DIESEL")
print(
    f"Primeira Propriedade: {primeira_propriedade_oleo}\nSegunda Propriedade um: {segunda_proprieda_um_oleo}\nSegunda Propriedade dois: {segunda_proprieda_dois_oleo}"
)

resultado_gasolina = {
    "grupo": ["GASOLINA ADITIVADA", "GASOLINA ADITIVADA", "GASOLINA ADITIVADA"],
    "variavel": ["Preço mínimo revenda", "Preço médio revenda", "Preço máximo revenda"],
    "media": [
        gasolina_aditivada_df["PRECO MINIMO REVENDA"].mean(),
        gasolina_aditivada_df["PRECO MEDIO REVENDA"].mean(),
        gasolina_aditivada_df["PRECO MAXIMO REVENDA"].mean(),
    ],
    "mediana": [
        gasolina_aditivada_df["PRECO MINIMO REVENDA"].median(),
        gasolina_aditivada_df["PRECO MEDIO REVENDA"].median(),
        gasolina_aditivada_df["PRECO MAXIMO REVENDA"].median(),
    ],
    "variancia": [
        gasolina_aditivada_df["PRECO MINIMO REVENDA"].var(),
        gasolina_aditivada_df["PRECO MEDIO REVENDA"].var(),
        gasolina_aditivada_df["PRECO MAXIMO REVENDA"].var(),
    ],
    "desvio_padrao": [
        gasolina_aditivada_df["PRECO MINIMO REVENDA"].std(),
        gasolina_aditivada_df["PRECO MEDIO REVENDA"].std(),
        gasolina_aditivada_df["PRECO MAXIMO REVENDA"].std(),
    ],
    "coeficiente_variacao": [
        gasolina_aditivada_df["PRECO MINIMO REVENDA"].std()
        / gasolina_aditivada_df["PRECO MINIMO REVENDA"].mean(),
        gasolina_aditivada_df["PRECO MEDIO REVENDA"].std()
        / gasolina_aditivada_df["PRECO MEDIO REVENDA"].mean(),
        gasolina_aditivada_df["PRECO MAXIMO REVENDA"].std()
        / gasolina_aditivada_df["PRECO MAXIMO REVENDA"].mean(),
    ],
}

resultado_oleo = {
    "grupo": ["OLEO DIESEL", "OLEO DIESEL", "OLEO DIESEL"],
    "variavel": ["Preço mínimo revenda", "Preço médio revenda", "Preço máximo revenda"],
    "media": [
        oleo_diesel_df["PRECO MINIMO REVENDA"].mean(),
        oleo_diesel_df["PRECO MEDIO REVENDA"].mean(),
        oleo_diesel_df["PRECO MAXIMO REVENDA"].mean(),
    ],
    "mediana": [
        oleo_diesel_df["PRECO MINIMO REVENDA"].median(),
        oleo_diesel_df["PRECO MEDIO REVENDA"].median(),
        oleo_diesel_df["PRECO MAXIMO REVENDA"].median(),
    ],
    "variancia": [
        oleo_diesel_df["PRECO MINIMO REVENDA"].var(),
        oleo_diesel_df["PRECO MEDIO REVENDA"].var(),
        oleo_diesel_df["PRECO MAXIMO REVENDA"].var(),
    ],
    "desvio_padrao": [
        oleo_diesel_df["PRECO MINIMO REVENDA"].std(),
        oleo_diesel_df["PRECO MEDIO REVENDA"].std(),
        oleo_diesel_df["PRECO MAXIMO REVENDA"].std(),
    ],
    "coeficiente_variacao": [
        oleo_diesel_df["PRECO MINIMO REVENDA"].std()
        / oleo_diesel_df["PRECO MINIMO REVENDA"].mean(),
        oleo_diesel_df["PRECO MEDIO REVENDA"].std()
        / oleo_diesel_df["PRECO MEDIO REVENDA"].mean(),
        oleo_diesel_df["PRECO MAXIMO REVENDA"].std()
        / oleo_diesel_df["PRECO MAXIMO REVENDA"].mean(),
    ],
}


resultado_df = pd.DataFrame(resultado_gasolina)

resultado_df = resultado_df._append(pd.DataFrame(resultado_oleo), ignore_index=True)
gasolina_aditivada_df.to_csv("dados/amostra_gasolina_aditivada.csv")
oleo_diesel_df.to_csv("dados/amostra_oleo_diesel.csv")
resultado_df.to_csv("dados/resultado.csv")

grouped = amostras_df[
    ["PRODUTO", "PRECO MINIMO REVENDA", "PRECO MEDIO REVENDA", "PRECO MAXIMO REVENDA"]
]

criar_grafico(
    grouped, "preco minimo revenda", "grafico_dispersao_preco_minimo_revenda.png"
)
criar_grafico(
    grouped, "preco medio revenda", "grafico_dispersao_preco_medio_revenda.png"
)
criar_grafico(
    grouped, "preco maximo revenda", "grafico_dispersao_preco_maximo_revenda.png"
)
