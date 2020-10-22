package main

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

var testCases = []struct {
	name string
	in   int
	out  string
}{
	{" to roman numeral 1", 1, "I"},
	{" to roman numeral 2", 2, "II"},
	{" to roman numeral 3", 3, "III"},
	{" to roman numeral 4", 4, "IV"},
	{" to roman numeral 5", 5, "V"},
	{" to roman numeral 9", 9, "IX"},
	{" to roman numeral 21", 21, "XXI"},
	{" to roman numeral 50", 50, "L"},
	{" to roman numeral 100", 100, "C"},
	{" to roman numeral 500", 500, "D"},
	{" to roman numeral 1000", 1000, "M"},
}

func TestToRomanNumeral(t *testing.T) {
	for _, tt := range testCases {
		t.Run(tt.name, func(t *testing.T) {
			res := ToRomanNumeral(tt.in)
			assert.Equal(t, tt.out, res)
		})
	}
}
