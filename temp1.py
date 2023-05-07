import matplotlib.pyplot as plt
import numpy as np

t = np.linspace(0, 24, 500)
T = -5/18 * t**2 + 65/9 * t - 215/18 

fig, ax = plt.subplots()

ax.plot(t, T, color='red', label='M(t)=(-5/18)t^2 + (65/9)t - 215/18')

ax.set_xlabel('tiempo[h]')
ax.set_ylabel('Temperatura[C°]')
ax.set_title('Temperatura exterior(M(t)) en Neiva como función del tiempo en horas')

ax.legend()

plt.show()
fig.savefig("plotM.jpg", bbox_inches='tight')