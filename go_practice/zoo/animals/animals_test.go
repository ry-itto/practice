package animals

import (
	"testing"
)

func TestDogInJapanese(t *testing.T) {
	expect := "犬"
	actual := DogInJapanese()

	if expect != actual {
		t.Errorf("%s != %s", expect, actual)
	}
}

func TestMonkeyInJapanese(t *testing.T) {
	expect := "さる"
	actual := MonkeyInJapanese()

	if expect != actual {
		t.Errorf("%s != %s", expect, actual)
	}
}

func TestRabbitInJapanese(t *testing.T) {
	expect := "うさぎ"
	actual := RabbitInJapanese()

	if expect != actual {
		t.Errorf("%s != %s", expect, actual)
	}
}

func TestRabbitInJapaneseFailCase(t *testing.T) {
	expect := "ウサギ"
	actual := RabbitInJapanese()

	if expect != actual {
		t.Errorf("%s != %s", expect, actual)
	}
}