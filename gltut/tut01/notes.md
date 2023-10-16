# tut01
- vertex position: {x,y,z,z-depth limit} (clip space position)
- glDrawArrays(GL_TRIANGLES, startposition, how many vertex to draw);

- if else short hand x>y?x:y'

- keep image square
```C
	int size =w>h?h:w;
	glViewport(0, 0, (GLsizei) size, (GLsizei) size);
```

- Resize and keep window center
```C
	int size =0;
	std::vector<int> center = {0,0};

	if(w>h){
		size = h;
		center={(w-size)/2,0};
	}else{
		size = w;
		center={0,(h-size)/2};
	}

	glViewport(center[0], center[1], (GLsizei) size, (GLsizei) size);
```
