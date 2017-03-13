package main

import (
	"fmt"
	ui "github.com/gizak/termui"
	"math/rand"
	"os"
)

var selected = 0
var sliders []*ui.Gauge

func rehighlight() {
	for i, s := range sliders {
		if i == selected {
			s.BorderFg = ui.ColorYellow
			s.BarColor = ui.ColorBlue
		} else {
			s.BorderFg = ui.ColorYellow
			if i == 0 {
				s.BarColor = ui.ColorGreen
			} else {
				s.BarColor = ui.ColorRed
			}

		}
	}
	ui.Render(ui.Body)
}

func updateslider(slider, value int) {
	sliders[slider].Percent = value
	ui.Render(ui.Body)
}

func changevol(change int) {
	var new_amount = sliders[selected].Percent + change
	if new_amount > 100 {
		new_amount = 100
	} else if new_amount < 0 {
		new_amount = 0
	}
	updateslider(selected, new_amount)

}

func main() {
	fmt.Println("YAY")
	err := ui.Init()
	if err != nil {
		panic(err)
	}
	defer ui.Close()

	p0 := ui.NewPar("Press q to quit")
	p0.Height = 3

	title := ui.NewPar("     μMIX Control")
	title.Border = false

	master := ui.NewGauge()
	master.Percent = 76
	master.Width = 50
	master.BorderLabel = "Master Volume"
	master.BorderLabelFg = ui.ColorGreen
	master.BarColor = ui.ColorRed
	master.BorderFg = ui.ColorWhite

	in1 := ui.NewGauge()
	in1.Percent = 45
	in1.Width = 50
	in1.BorderLabel = "Input 1"
	in1.BarColor = ui.ColorRed
	in1.BorderFg = ui.ColorWhite
	in1.BorderLabelFg = ui.ColorCyan

	in2 := ui.NewGauge()
	in2.Percent = 21
	in2.Width = 50
	in2.BorderLabel = "Input 2"
	in2.BarColor = ui.ColorRed
	in2.BorderFg = ui.ColorWhite
	in2.BorderLabelFg = ui.ColorCyan

	in3 := ui.NewGauge()
	in3.Percent = 98
	in3.Width = 50
	in3.BorderLabel = "Input 3"
	in3.BarColor = ui.ColorRed
	in3.BorderFg = ui.ColorWhite
	in3.BorderLabelFg = ui.ColorCyan

	in4 := ui.NewGauge()
	in4.Percent = 50
	in4.Width = 50
	in4.BorderLabel = "Input 4"
	in4.BarColor = ui.ColorRed
	in4.BorderFg = ui.ColorWhite
	in4.BorderLabelFg = ui.ColorCyan

	sliders = []*ui.Gauge{master, in1, in2, in3, in4}

	ui.Body.AddRows(
		ui.NewRow(ui.NewCol(12, 0, p0)),
		ui.NewRow(ui.NewCol(6, 5, title)),
		ui.NewRow(ui.NewCol(6, 3, master)),
		ui.NewRow(ui.NewCol(6, 3, in1)),
		ui.NewRow(ui.NewCol(6, 3, in2)),
		ui.NewRow(ui.NewCol(6, 3, in3)),
		ui.NewRow(ui.NewCol(6, 3, in4)))

	ui.Body.Align()

	rehighlight()

	// handle key q pressing
	ui.Handle("/sys/kbd/q", func(ui.Event) {
		ui.StopLoop()
		ui.Close()
		os.Exit(1)
	})

	ui.Handle("/sys/kbd/C-x", func(ui.Event) {
		ui.StopLoop()
		ui.Close()
		os.Exit(1)
	})

	ui.Handle("/sys/kbd/C-c", func(ui.Event) {
		ui.StopLoop()
		ui.Close()
		os.Exit(1)
	})

	ui.Handle("/sys/kbd/<up>", func(e ui.Event) {
		selected = (selected - 1 + len(sliders)) % len(sliders)
		rehighlight()
	})

	ui.Handle("/sys/kbd/<down>", func(e ui.Event) {
		selected = (selected + 1 + len(sliders)) % len(sliders)
		rehighlight()
	})

	ui.Handle("/sys/kbd/<left>", func(e ui.Event) {
		changevol(-3)
	})

	ui.Handle("/sys/kbd/<right>", func(e ui.Event) {
		changevol(+3)
	})

	// handle a 1s timer
	times := 0
	ui.Handle("/timer/1s", func(e ui.Event) {
		if times == 0 {
			ui.Clear()
			ui.Body.Align()
		}
		times = (times + 1) % 3

		updateslider(rand.Intn(5), rand.Intn(101))

		updateslider(rand.Intn(5), rand.Intn(101))

		updateslider(rand.Intn(5), rand.Intn(101))

	})

	ui.Loop()

	for {

	}
}
