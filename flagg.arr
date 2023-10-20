#lang pyret
include color

# Blå og rød blir definert fra RGBA
flagRed = color(186, 12, 47, 1)
flagBlue = color(9, 32, 91, 1)

# Flaggets proposjoner er 22:16
# Proposjonene blir ganget med 10 slik at flagget blir litt større her i CPO

# Her blir flaggets lengde og høyde definert
flagLength = 22 * 10
flagHeight = 16 * 10

# Hvit og blå sine proposisjoner er 1 + 2 + 1 = 4
whiteWidth = 4 * 10

# Blå sin proposisjon er 2
blueWidth = 2 * 10

# Her defineres bakgrunnen i rød farge
background = rectangle(flagLength, flagHeight, "solid", flagRed)

# Her blir de hvite stripene definert
whiteLineOne = rectangle(flagLength, whiteWidth, "solid", "white")
whiteLineTwo = rectangle(whiteWidth, flagHeight, "solid", "white")

# Blå stripene sine definisjoner
blueLineOne = rectangle(flagLength, blueWidth, "solid", flagBlue)
blueLineTwo = rectangle(blueWidth, flagHeight, "solid", flagBlue)

# Hvite striper blir lagt oppå bakgrunnen til flagget
whiteOverlayOne = overlay-xy(whiteLineOne, 0, -60, background)
whiteOverlayTwo = overlay-xy(whiteLineTwo, -60, 0, whiteOverlayOne)

# Samme her, blå striper blir lagt oppå flagget
blueOverlayOne = overlay-xy(blueLineOne, 0, -70, whiteOverlayTwo)
norwegianFlag = overlay-xy(blueLineTwo, -70, 0, blueOverlayOne)

# Resultatet
norwegianFlag
