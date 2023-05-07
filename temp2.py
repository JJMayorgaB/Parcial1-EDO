import matplotlib.pyplot as plt
import numpy as np

t = np.linspace(0, 24, 500)
T = -5/18 * t**2 + 150/18 * t - 515/18 + 839/18 * np.exp(-t/6)

fig, ax = plt.subplots()

ax.plot(t, T, color='red', label='T(t)=(-5/18)t^2 + (150/18)t - 515/18 + (839/18)e^(-t/6)')

ax.set_xlabel('tiempo[h]')
ax.set_ylabel('Temperatura[C°]')
ax.set_title('Temperatura del edificio en Neiva como función del tiempo en horas')

ax.legend()

plt.show()
fig.savefig("plot.jpg", bbox_inches='tight')
