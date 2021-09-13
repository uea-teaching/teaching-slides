---
author: Dave Greenwood
title: Example Slides
---

# Foo

```python
print("hello world")
```

# Bar

- test
- test

## Getting up

::: incremental

- Turn off alarm
- Get out of bed

:::

## Breakfast

- Eat eggs
- Drink coffee

# In the evening

## Dinner

- Eat spaghetti
- Drink wine

---

![picture of trees](assets/kaung-myat-min-bCAOV2Sg7Es-unsplash.jpg)

---

## Going to sleep

- Get in bed
- Count sheep

## Equations

$$\sum_{i=1}^{n} x_{i}y_{i}$$

## With Notes

This slide has a note.

::: notes

This is my note.

- It can contain Markdown
- like this list

:::

---

### long code example {.allowframebreaks}

```{.jsx data-line-numbers="|4,8-11|17|22-24" data-id="code-animation"}
import React, { useState } from 'react';

function Example() {
  const [count, setCount] = useState(0);

  return (
    <div>
      <p>You clicked {count} times</p>
      <button onClick={() => setCount(count + 1)}>
        Click me
      </button>
    </div>
  );
}

function SecondExample() {
  const [count, setCount] = useState(0);

  return (
    <div>
      <p>You clicked {count} times</p>
      <button onClick={() => setCount(count + 1)}>
        Click me
      </button>
    </div>
  );
}
```

---

## This slide has columns

::: columns

:::: column
left
::::

:::: column
right
::::

:::

---

::: columns

:::: column
![book shelves](assets/janko-ferlic-sfL_QOnmy00-unsplash.jpg)
::::

:::: column
This is the second column.

The image to the left is 600px wide.

::::

:::

---

::: columns

:::: column
This is the left column.

The image to the right is 400x553px.
::::

:::: column
![book shelves](assets/angelo-mariano-m-e0jNg_jBuSw-unsplash.jpg)
::::

:::

---

## {data-background-image="assets/kaung-myat-min-bCAOV2Sg7Es-unsplash.jpg"}

no image in beamer

---

::: columns

:::: column

![](assets/angelo-mariano-m-e0jNg_jBuSw-unsplash.jpg){height=90%}

::::

:::: column

| **Item** | **Option** |
| :------- | :--------: |
| Item 1   |  Option 1  |
| Item 2   |  Option 2  |

::::

:::

## Incremental

Incremental list:

::: incremental

- Turn off alarm
- Get out of bed
- Eat eggs
- Drink coffee

:::

## Video

<video controls width="400px"
data-src="assets/mov/Bog-AV-noise-m18dB-SNR.mp4">
</video>

This slide has a video that only shows in html output.
