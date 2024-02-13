# Read names from a file and print them in alphabetical order
file_loc= "/Users/bhaktivaghasia/Desktop/Python /readfile/assignment1.dat"  #actual path of file


try:
    with open(file_loc, 'r') as file:
        names = file.read().splitlines()

    # Sort names
    sorted_names = sorted(names)

    # Print sorted names
    print("Names sorted Alphabetically:")
    for name in sorted_names:
        print(name)

# many Exceptions Handling

except FileNotFoundError:
    print(f"Error: File not found at {file_loc}")    # print(f) function used for string template
except Exception as ex:
    print(f"An error occurred: {ex}")
