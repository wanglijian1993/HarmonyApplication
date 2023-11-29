
import Logger from '../../utils/Logger';

@Entry
@Component
struct RenderTestPage{
  @State arr: number[] = Array.from(Array(10).keys()); // [0.,.9]
  nextUnused: number = this.arr.length;

  build() {
    Column() {
      Button(`push new item`)
        .onClick(() => {
          this.arr.push(this.nextUnused++)
        })
        .width(300).height(40)
      Button(`pop last item`)
        .onClick(() => {
          this.arr.pop()
        })
        .width(300).height(40)
      Button(`prepend new item (unshift)`)
        .onClick(() => {
          this.arr.unshift(this.nextUnused++)
        })
        .width(300).height(40)
      Button(`remove first item (shift)`)
        .onClick(() => {
          this.arr.shift()
        })
        .width(300).height(40)
      Button(`insert at pos ${Math.floor(this.arr.length / 2)}`)
        .onClick(() => {
          this.arr.splice(Math.floor(this.arr.length / 2), 0, this.nextUnused++);
        })
        .width(300).height(40)
      Button(`remove at pos ${Math.floor(this.arr.length / 2)}`)
        .onClick(() => {
          this.arr.splice(Math.floor(this.arr.length / 2), 1);
        })
        .width(300).height(40)
      Button(`set at pos ${Math.floor(this.arr.length / 2)} to ${this.nextUnused}`)
        .onClick(() => {
          this.arr[Math.floor(this.arr.length / 2)] = this.nextUnused++;
        })
        .width(300).height(40)
      ForEach(this.arr,
        (item) => {
          CounterView({ label: item.toString() })
        }
      )
    }
  }

}

@Component
struct CounterView {
  label: string;
  @State count: number = 0;

  build() {
    Button(`${this.label}-${this.count} click +1`)
      .width(300).height(40)
      .backgroundColor('#a0ffa0')
      .onClick(() => {
        this.count++;
      })
  }
}