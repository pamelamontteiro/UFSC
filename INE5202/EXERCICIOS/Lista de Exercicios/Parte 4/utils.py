import numpy as np
import matplotlib.pyplot as plt


def plot_graph(func, x_points, y_points):
    # Gerando valores de x para a curva
    x_values = np.linspace(x_points[0], x_points[-1], 400)  # 400 pontos entre -10 e 10

    # Calculando os valores de y correspondentes para a curva
    y_values = func(x_values)

    # Plotando a curva
    plt.figure(figsize=(8, 6))  # Configura o tamanho do gráfico
    plt.plot(x_values, y_values, label='g(x)', color='blue')

    # Adicionando pontos específicos
    plt.scatter(x_points, y_points, color='red', zorder=5)  # zorder=5 para garantir que os pontos fiquem visíveis acima da linha

    # Adicionando anotações aos pontos
    for (i, j) in zip(x_points, y_points):
        plt.annotate(f'({i}, {j})', (i, j), textcoords="offset points", xytext=(0,10), ha='center')

    # Adicionando detalhes ao gráfico
    plt.title('Gráfico da Função com Pontos Destacados')
    plt.xlabel('x')
    plt.ylabel('y')
    plt.grid(True)
    plt.legend()
    plt.show()