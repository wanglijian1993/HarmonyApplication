let NextID: number = 0;

@Observed
class MyCounter {
  public id: number;
  public c: number;

  constructor(c: number) {
    this.id = NextID++;
    this.c = c;
  }
}

@Component
struct CounterView {
  @ObjectLink
  counter: MyCounter;
  label: string = 'CounterView';

  build() {
    Button(`CounterView [${this.label}] this.counter.c=${this.counter.c} +1`)
      .width(300).height(50)
      .onClick(() => {
        this.counter.c += 1;
      })
  }
}

@Entry
@Component
struct MainView {
  @State firstIndex: number = 0;
  @State counters: Array<MyCounter> = [new MyCounter(0), new MyCounter(0), new MyCounter(0),
    new MyCounter(0), new MyCounter(0)];

  build() {
    Column() {
      ForEach(this.counters.slice(this.firstIndex, this.firstIndex + 3),
        (item) => {
          CounterView({ label: `Counter item #${item.id}`, counter: item })
        },
        (item) => item.id.toString()
      )
      Button(`Counters: shift up`)
        .width(200).height(50)
        .onClick(() => {
          this.firstIndex = Math.min(this.firstIndex + 1, this.counters.length - 3);
        })
      Button(`counters: shift down`)
        .width(200).height(50)
        .onClick(() => {
          this.firstIndex = Math.max(0, this.firstIndex - 1);
        })
    }
  }
}