### A Pluto.jl notebook ###
# v0.19.32

using Markdown
using InteractiveUtils

# ╔═╡ e5c41980-0331-440b-aadd-6b1ed9020b40
# Part 2

# ╔═╡ d489e720-912c-11ee-095d-5d0cf6fd37f8
data = "Game 1: 10 red, 7 green, 3 blue; 5 blue, 3 red, 10 green; 4 blue, 14 green, 7 red; 1 red, 11 green; 6 blue, 17 green, 15 red; 18 green, 7 red, 5 blue
Game 2: 13 green, 10 red; 11 green, 1 blue, 7 red; 5 red, 12 green, 1 blue; 12 green, 6 red; 8 green, 5 red; 12 green, 1 red
Game 3: 7 green, 1 blue; 1 blue, 3 green, 1 red; 1 green, 1 blue; 2 green; 1 blue, 7 green, 2 red; 2 green
Game 4: 7 green, 11 blue; 12 blue, 7 green; 1 green, 7 blue; 5 blue, 2 green; 5 red, 9 green, 14 blue
Game 5: 2 red, 6 blue, 6 green; 2 red, 6 green; 12 blue, 5 red, 3 green; 12 green, 5 red, 8 blue; 10 blue, 5 green; 2 red, 4 green
Game 6: 8 blue, 1 red, 17 green; 7 blue; 10 green, 6 blue; 5 blue, 1 red, 11 green
Game 7: 1 blue, 2 red, 2 green; 1 blue, 3 green; 3 green, 1 red, 3 blue; 2 blue, 3 green, 1 red
Game 8: 3 green, 10 red, 15 blue; 1 green, 9 red; 9 blue, 2 green, 12 red
Game 9: 4 green, 10 blue, 13 red; 16 red, 7 blue; 14 red, 1 green, 1 blue; 14 red, 4 blue, 1 green
Game 10: 6 blue, 9 red, 3 green; 9 green, 7 blue, 9 red; 2 red, 4 blue, 6 green; 12 green, 7 blue, 5 red
Game 11: 1 green, 6 blue, 6 red; 7 red, 1 blue; 1 green, 6 blue; 4 red, 1 green, 1 blue; 6 red, 9 green, 4 blue; 5 green, 7 red, 4 blue
Game 12: 18 green, 4 red, 12 blue; 7 green, 5 blue, 3 red; 7 green, 3 red; 8 green, 7 blue; 4 red, 7 green, 10 blue
Game 13: 1 red, 2 blue; 1 red, 6 green; 5 blue, 2 red, 12 green; 1 red, 11 green, 2 blue; 2 red, 8 green, 1 blue; 3 blue, 16 green, 1 red
Game 14: 3 blue, 2 green; 4 green, 1 red; 1 green, 1 red, 3 blue; 4 blue, 3 green; 5 blue, 1 green; 4 green, 2 blue, 1 red
Game 15: 12 blue, 3 red; 5 blue, 2 red, 1 green; 12 blue, 3 red, 2 green; 1 green, 5 red, 6 blue; 1 green, 5 blue, 3 red
Game 16: 8 red, 4 blue, 1 green; 15 blue, 5 red, 4 green; 3 green, 13 blue, 4 red; 4 red, 1 blue, 3 green; 1 green, 13 blue, 6 red
Game 17: 8 red, 7 green, 2 blue; 6 green, 1 blue, 12 red; 3 red; 4 green, 1 red; 7 red, 1 blue, 9 green
Game 18: 7 blue, 10 red, 3 green; 3 green, 1 blue; 7 red, 1 green, 7 blue; 7 blue, 4 red, 1 green; 2 green, 1 blue, 10 red; 3 blue, 11 red, 1 green
Game 19: 10 red, 10 blue; 13 red; 4 blue, 15 red, 3 green; 6 green, 11 red, 11 blue; 4 blue, 8 red
Game 20: 1 blue, 9 green, 2 red; 2 blue, 4 red, 4 green; 4 green, 2 red
Game 21: 13 green, 1 red; 3 red, 5 green, 11 blue; 1 blue, 2 red, 4 green; 7 blue, 3 red; 2 red, 1 blue, 3 green
Game 22: 2 red, 2 blue, 3 green; 10 red, 4 blue; 8 blue, 8 green, 11 red
Game 23: 1 red, 2 blue; 1 blue, 1 green; 1 green; 3 red, 1 blue, 1 green
Game 24: 12 green, 4 red, 2 blue; 8 green, 5 blue; 8 green, 2 blue, 2 red
Game 25: 3 red, 8 green; 1 red, 4 blue, 1 green; 6 green; 3 blue, 5 green, 3 red; 9 green, 3 blue, 5 red
Game 26: 1 green, 3 red, 2 blue; 7 red, 2 green, 11 blue; 7 blue, 4 red; 11 blue, 1 red, 1 green; 2 green, 10 blue, 1 red; 1 green, 7 red, 7 blue
Game 27: 5 green, 2 red, 4 blue; 5 red, 4 blue, 3 green; 5 green, 2 red, 7 blue; 7 red, 15 green, 5 blue
Game 28: 1 green, 7 blue, 14 red; 7 green, 6 blue, 3 red; 7 blue, 4 red, 10 green; 9 red, 11 green, 5 blue
Game 29: 4 red, 6 blue, 5 green; 12 red, 3 green, 1 blue; 6 blue, 11 red, 6 green; 2 green, 2 blue, 12 red
Game 30: 13 green, 11 red, 11 blue; 7 green, 9 blue, 7 red; 11 red, 1 blue, 11 green
Game 31: 14 green, 1 blue, 8 red; 1 green, 2 blue; 1 green, 1 red, 1 blue
Game 32: 7 blue, 2 green; 12 blue, 7 green; 4 red, 14 blue, 2 green; 14 green, 4 blue
Game 33: 5 blue, 12 red; 3 blue, 4 red, 1 green; 9 red, 2 blue; 11 red
Game 34: 1 blue; 3 blue; 1 blue, 1 red; 5 red, 2 blue; 4 red, 1 blue, 1 green
Game 35: 3 green, 2 blue, 1 red; 2 red, 8 green, 3 blue; 7 green, 2 red, 8 blue; 3 blue, 4 green
Game 36: 10 green, 9 blue, 2 red; 3 green, 7 blue, 7 red; 14 green, 13 blue; 8 green, 8 red, 2 blue
Game 37: 3 red, 1 blue, 14 green; 1 blue, 1 green; 5 red, 9 green; 1 red, 2 blue, 13 green; 11 red, 14 green, 2 blue
Game 38: 4 green, 3 red, 6 blue; 18 red, 15 blue, 1 green; 17 blue, 6 green, 19 red; 18 red, 15 blue; 1 green, 12 blue, 18 red
Game 39: 1 red; 10 blue, 6 red, 1 green; 1 green, 1 red, 9 blue; 17 red, 10 blue
Game 40: 5 red, 3 green, 9 blue; 8 red, 4 blue; 2 green, 3 blue, 4 red; 3 blue, 4 red, 6 green; 4 blue, 5 red, 2 green; 4 blue
Game 41: 6 green, 1 blue; 5 blue, 3 green, 6 red; 10 red, 1 blue; 6 green, 1 blue, 9 red
Game 42: 1 red, 5 green, 7 blue; 7 red, 4 blue, 4 green; 5 red, 2 green, 6 blue
Game 43: 1 green, 18 red, 8 blue; 7 red, 4 green, 5 blue; 1 blue, 18 red; 5 red, 8 blue
Game 44: 3 blue, 10 green; 5 green, 2 red, 1 blue; 6 blue, 14 green; 3 green, 5 blue, 5 red
Game 45: 12 red, 1 blue, 16 green; 1 red, 6 blue, 3 green; 5 red, 5 blue, 7 green; 8 red, 15 green; 3 green, 12 red, 7 blue
Game 46: 3 red, 1 green; 1 green, 17 blue, 10 red; 2 green, 17 blue; 3 green, 17 blue, 12 red; 2 green, 12 red
Game 47: 3 green, 9 red; 3 red, 1 blue, 6 green; 10 red, 9 green, 1 blue; 2 blue, 15 green; 7 red, 12 green, 3 blue
Game 48: 4 green, 13 red, 14 blue; 8 red, 8 green; 15 blue, 4 red, 11 green; 3 blue, 3 red, 4 green; 2 blue, 6 red, 4 green; 13 green, 12 blue, 11 red
Game 49: 15 blue, 2 green, 7 red; 1 green, 7 red, 7 blue; 13 blue; 3 blue, 2 red, 1 green
Game 50: 9 red; 5 green, 2 blue, 10 red; 5 red, 1 green
Game 51: 3 green, 1 blue, 3 red; 4 blue, 4 red; 4 green, 6 red, 5 blue; 4 red, 7 blue
Game 52: 10 green, 12 red, 2 blue; 2 green, 7 red; 18 green, 3 red, 3 blue; 6 red, 13 green, 2 blue
Game 53: 13 blue, 2 green; 2 green, 12 blue; 1 green, 11 blue, 1 red; 11 blue, 2 green, 8 red
Game 54: 5 red; 15 green, 17 red, 7 blue; 14 green, 5 red, 15 blue; 2 red, 10 blue, 16 green
Game 55: 1 blue, 1 red, 2 green; 5 green, 3 blue, 8 red; 6 red, 4 blue, 7 green; 2 blue, 10 green, 7 red
Game 56: 1 blue, 8 red, 7 green; 3 green, 7 blue, 5 red; 5 green, 7 blue; 3 blue, 12 red, 8 green; 3 blue; 2 blue, 3 green, 10 red
Game 57: 5 red, 13 green, 3 blue; 19 green, 7 red, 8 blue; 1 red, 12 green, 3 blue; 4 green, 10 blue, 4 red; 3 blue, 7 red, 20 green
Game 58: 8 blue, 5 red, 2 green; 4 red, 11 blue; 9 blue, 6 green, 8 red; 7 green, 11 blue
Game 59: 7 red, 7 green, 9 blue; 5 red, 4 green, 5 blue; 1 red, 2 blue, 6 green; 10 green, 12 blue, 3 red; 7 green, 18 blue, 4 red
Game 60: 12 blue, 7 red, 12 green; 18 green, 9 red; 13 green, 13 red, 12 blue; 14 red, 5 green, 13 blue; 17 green, 7 red, 13 blue
Game 61: 5 blue; 2 blue, 10 green, 2 red; 12 green, 2 red, 1 blue; 4 blue, 2 green; 2 red, 6 green; 6 green, 2 blue, 2 red
Game 62: 2 blue, 5 red, 4 green; 3 green, 6 blue, 7 red; 13 red, 5 blue, 1 green; 3 red, 3 blue, 1 green; 17 blue, 4 green, 3 red; 5 red, 13 blue, 3 green
Game 63: 1 red, 6 blue, 10 green; 1 red, 8 blue, 6 green; 7 red, 11 blue
Game 64: 11 blue, 13 red; 12 blue, 6 red; 1 green, 2 blue, 4 red
Game 65: 1 green, 9 red, 4 blue; 11 blue, 3 green; 2 blue, 1 green; 3 red, 2 green, 10 blue
Game 66: 8 red, 1 blue, 3 green; 1 green, 3 blue, 1 red; 2 blue, 9 green; 8 green, 3 blue, 6 red; 2 blue, 12 green, 7 red
Game 67: 5 green, 5 red, 10 blue; 12 blue, 13 green, 4 red; 6 red, 11 green, 3 blue; 8 blue, 4 red; 4 red, 14 green; 1 red, 1 blue, 14 green
Game 68: 7 green, 17 red; 14 green, 1 blue, 1 red; 11 green, 1 blue, 16 red
Game 69: 11 red, 2 green, 2 blue; 4 blue, 14 red; 2 red, 6 blue, 3 green; 6 red, 2 green; 5 red, 1 green, 4 blue; 7 red, 3 blue
Game 70: 18 blue, 4 red; 5 red, 14 blue; 17 blue, 9 red; 13 red, 17 blue, 1 green; 2 blue, 9 red
Game 71: 1 green, 6 red, 6 blue; 6 green, 4 blue, 5 red; 8 red, 3 blue, 7 green; 7 red, 2 blue, 1 green; 3 blue, 2 green, 3 red
Game 72: 11 green, 4 red, 2 blue; 2 blue, 6 green, 1 red; 3 red, 1 blue, 9 green; 4 blue, 12 green, 3 red; 2 red, 3 green, 1 blue
Game 73: 1 blue, 12 red; 14 green, 2 blue, 10 red; 6 blue, 8 red, 8 green; 7 green; 6 red, 10 green, 4 blue; 4 green, 9 red
Game 74: 5 green, 6 blue; 1 green, 12 blue; 2 blue, 2 green, 5 red; 5 green, 9 blue, 2 red
Game 75: 11 red, 7 blue, 12 green; 7 blue, 8 red, 9 green; 3 red, 17 green, 3 blue
Game 76: 1 green, 12 blue; 11 blue, 7 green, 10 red; 10 green, 12 blue, 1 red; 10 green, 12 red, 1 blue
Game 77: 2 blue, 17 green, 3 red; 10 red, 13 green; 12 green, 2 blue, 13 red; 12 green, 2 blue, 8 red; 14 green, 10 red, 1 blue
Game 78: 3 red, 8 green, 5 blue; 8 green, 3 blue; 2 green, 6 red; 4 red, 1 green, 4 blue; 4 red, 8 green, 6 blue; 1 red, 1 blue, 8 green
Game 79: 1 green, 2 blue, 2 red; 1 blue, 19 red, 1 green; 18 red; 1 green, 3 red, 5 blue; 15 red, 1 blue; 2 blue, 17 red, 1 green
Game 80: 13 red, 1 green; 15 red, 1 blue; 8 red, 1 green
Game 81: 1 blue, 1 red, 2 green; 1 red, 3 green, 2 blue; 1 blue, 4 green; 2 green, 2 blue
Game 82: 8 red, 4 green, 8 blue; 4 green, 6 red, 3 blue; 3 red, 3 blue; 2 blue, 1 green, 11 red; 2 green, 1 blue, 4 red
Game 83: 1 red, 15 green; 2 red, 6 blue, 12 green; 3 green, 10 blue, 14 red; 6 blue, 7 red, 1 green
Game 84: 2 blue, 12 red, 4 green; 1 red, 3 blue, 5 green; 6 blue, 5 green, 12 red; 2 red, 1 green; 2 red, 5 blue, 5 green
Game 85: 4 red; 3 red, 15 green, 2 blue; 15 green, 1 red, 2 blue; 4 green, 4 red, 2 blue
Game 86: 1 green, 3 red, 4 blue; 2 green, 7 red, 4 blue; 7 red, 4 green, 4 blue; 1 blue, 11 red, 4 green
Game 87: 5 green, 5 red, 15 blue; 4 blue, 12 red, 10 green; 3 green, 11 blue, 9 red; 3 red, 4 green, 16 blue; 3 red, 10 blue, 10 green; 15 blue, 9 green, 12 red
Game 88: 2 green, 10 blue; 4 blue, 8 green; 8 green, 1 blue; 13 blue, 1 red, 2 green; 2 green, 16 blue
Game 89: 5 blue, 7 red; 10 red, 11 blue, 6 green; 6 green, 3 red, 7 blue; 5 green, 3 red, 20 blue; 8 red, 6 green, 10 blue; 7 blue, 5 green, 10 red
Game 90: 4 red, 1 green, 4 blue; 9 red, 9 blue, 9 green; 4 green, 11 red; 9 red, 5 green, 3 blue; 9 red, 2 green, 2 blue
Game 91: 13 green, 13 blue; 3 red, 11 green, 5 blue; 10 blue, 3 green, 1 red; 3 blue, 10 green, 2 red; 5 blue, 2 green
Game 92: 8 blue, 1 green, 4 red; 3 blue, 6 red; 3 red, 1 green, 14 blue; 6 blue, 8 red; 15 blue, 9 red; 4 blue, 2 red
Game 93: 3 blue, 17 red, 2 green; 9 blue, 6 red; 6 blue, 2 green, 16 red; 1 green, 5 blue, 15 red; 3 blue, 2 green, 14 red
Game 94: 7 blue, 19 green, 1 red; 4 blue; 8 blue, 3 red, 4 green
Game 95: 2 green, 6 red, 13 blue; 5 red, 12 green, 12 blue; 18 blue, 8 red, 4 green; 7 red, 6 green, 17 blue; 4 green, 9 red, 6 blue; 10 red, 1 green, 4 blue
Game 96: 8 blue, 9 red; 9 red, 10 blue; 5 blue, 1 green, 2 red; 2 blue, 2 red
Game 97: 4 red, 1 blue, 2 green; 2 green, 11 red, 1 blue; 8 red, 1 green; 7 red, 3 green, 1 blue; 5 red, 1 green, 1 blue
Game 98: 6 green, 4 blue, 12 red; 3 blue, 13 red, 1 green; 2 blue, 12 green, 2 red; 13 green, 2 red, 1 blue; 10 red, 7 green, 1 blue
Game 99: 6 blue, 3 green, 5 red; 3 green, 6 red, 8 blue; 3 green, 11 blue, 14 red; 14 red, 5 green, 1 blue
Game 100: 16 red, 3 blue; 2 red, 5 green; 9 red; 1 blue, 3 green, 10 red; 1 red, 5 blue, 3 green; 12 blue, 9 red"

# ╔═╡ 6f826a47-8f88-4970-9332-f0d8b32803f6
data_lines = split(data, "\n")

# ╔═╡ 43bc1b9b-ead2-4435-bffd-8c31e3c22a45
function  create()
		obj = Dict()
		for line in data_lines
			split_line = split(line, ":")
			y = split_line[1]
			key = split(y, " ")[2]
			key_int = parse(Int64, key)
			value = split_line[2]
			obj[key_int] = value
		end
		return obj
end

# ╔═╡ 2e8bfaa4-e5a2-4987-a784-14f52ed54f7f
x = create()

# ╔═╡ e1339453-2854-474d-ba93-fc1addfd4c00
begin
	limit = [12,14,13]
	final_dictionary = Dict()
	second_dictionary = Dict()
	for (key, value) in x
		rbg = [0,0,0]
		for each in value
			for color in each
				if string(color[end]) == "d"
					red = split(color, " ")[1] .|> (half -> parse(Int, half))
					if red > rbg[1]
						rbg[1] = red
					end
				elseif string(color[end]) == "e"
					blue = split(color, " ")[1] .|> (half -> parse(Int, half))
					if blue > rbg[2]
						rbg[2] = blue
					end
				else
					green = split(color, " ")[1] .|> (half -> parse(Int, half))
					if green > rbg[3]
						rbg[3] = green
					end
				end
			end
		end
		second_dictionary[key] = rbg
		if rbg[1] <= limit[1] && rbg[2] <= limit[2] && rbg[3] <= limit[3]
			final_dictionary[key] = rbg
		end
	end
end
		
		

# ╔═╡ 6d35e913-282d-4b7c-8a96-53e9a8d5cbc9
begin
	power_array = zeros(Int, 100)
		for (key, value) in second_dictionary
			power = value[1]*value[2]*value[3]
			power_array[key] = power
		end
	println(power_array)
end

# ╔═╡ f4ae6c15-042a-4424-87a4-e084af740c73
sum(power_array)
# 62241 is correct! first try =3

# ╔═╡ 8764b497-707a-4f1c-bf9b-15541dde0fcb
length(second_dictionary)

# ╔═╡ 5e111222-a8cf-49d5-bd02-f30e35e09b38
int_keys = keys(final_dictionary)

# ╔═╡ 417c8693-5c5f-4a1d-ac47-4db5ff5daaa1
sum(int_keys)
# 3845 is wrong. too high.
# 2207 correct!!! second try

# ╔═╡ 9fb349a8-c9e6-41ac-9986-d2e2e4620651
non_duplicate_keys = unique(int_keys)

# ╔═╡ 0b855e04-bc6b-4573-8271-22ba47b33f16
length(non_duplicate_keys)

# ╔═╡ 4118913e-edde-4409-a22c-ed53839ec228
length(final_dictionary)
# 78 for first submission = wrong

# ╔═╡ e87dcbb5-7aca-41fd-9296-ac1fcd62993f
println(final_dictionary)

# ╔═╡ 515a8656-6961-4ab1-8d17-965fa067df03
println(x)

# ╔═╡ 1da95a2d-cfc8-43e6-a7d9-06645e5df263
for (key, value) in x
	z = split(value, ";") .|> strip .|> (hal -> split(hal, ", "))
	x[key] = z
	println(z)
end

# ╔═╡ 5b4967ef-6475-41b8-a302-ff31af203d83
length(x)

# ╔═╡ 24f0037e-a6f9-475f-9d54-dd20647b21b7
data_length = length(data_lines)

# ╔═╡ Cell order:
# ╠═f4ae6c15-042a-4424-87a4-e084af740c73
# ╠═6d35e913-282d-4b7c-8a96-53e9a8d5cbc9
# ╠═8764b497-707a-4f1c-bf9b-15541dde0fcb
# ╠═e5c41980-0331-440b-aadd-6b1ed9020b40
# ╠═0b855e04-bc6b-4573-8271-22ba47b33f16
# ╠═417c8693-5c5f-4a1d-ac47-4db5ff5daaa1
# ╠═9fb349a8-c9e6-41ac-9986-d2e2e4620651
# ╠═5e111222-a8cf-49d5-bd02-f30e35e09b38
# ╠═4118913e-edde-4409-a22c-ed53839ec228
# ╠═e87dcbb5-7aca-41fd-9296-ac1fcd62993f
# ╠═e1339453-2854-474d-ba93-fc1addfd4c00
# ╠═515a8656-6961-4ab1-8d17-965fa067df03
# ╠═1da95a2d-cfc8-43e6-a7d9-06645e5df263
# ╠═5b4967ef-6475-41b8-a302-ff31af203d83
# ╠═2e8bfaa4-e5a2-4987-a784-14f52ed54f7f
# ╠═43bc1b9b-ead2-4435-bffd-8c31e3c22a45
# ╠═24f0037e-a6f9-475f-9d54-dd20647b21b7
# ╠═6f826a47-8f88-4970-9332-f0d8b32803f6
# ╠═d489e720-912c-11ee-095d-5d0cf6fd37f8
