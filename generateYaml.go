package main

import (
	"os"

	"sigs.k8s.io/kustomize/pkg/commands"
)

func main() {
	c := commands.NewDefaultCommand()
	devArgs := []string{"build", "overlays/dev", "-o", "build/smartSearch-dev.yaml"}
	prodArgs := []string{"build", "overlays/production", "-o", "build/smartSearch-prod.yaml"}

	c.SetArgs(devArgs)
	if err := c.Execute(); err != nil {
		os.Exit(1)
	}
	c.SetArgs(prodArgs)
	if err := c.Execute(); err != nil {
		os.Exit(1)
	}
	os.Exit(0)
}
