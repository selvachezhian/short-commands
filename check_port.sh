#!/usr/bin/env bash

checkPort() {
    lsof -i :$1
}

alias check=checkPort