#!/bin/bash

set -eu

outfile="react/Icon/icons-sprite.js"

icons="assets/icons/ui/album-add.svg
assets/icons/ui/album-remove.svg
assets/icons/ui/album.svg
assets/icons/ui/arrow.svg
assets/icons/ui/back.svg
assets/icons/ui/bottom-select.svg
assets/icons/ui/bottom.svg
assets/icons/ui/calendar.svg
assets/icons/ui/check 2.svg
assets/icons/ui/check-circleless.svg
assets/icons/ui/check.svg
assets/icons/ui/clock.svg
assets/icons/ui/connector.svg
assets/icons/ui/cozy-negative.svg
assets/icons/ui/cozy.svg
assets/icons/ui/cross.svg
assets/icons/ui/cube.svg
assets/icons/ui/dash.svg
assets/icons/ui/delete.svg
assets/icons/ui/destroy.svg
assets/icons/ui/device-laptop.svg
assets/icons/ui/display.svg
assets/icons/ui/dots.svg
assets/icons/ui/download.svg
assets/icons/ui/exchange.svg
assets/icons/ui/eye.svg
assets/icons/ui/eye-closed.svg
assets/icons/ui/file-none.svg
assets/icons/ui/file.svg
assets/icons/ui/folder.svg
assets/icons/ui/forward.svg
assets/icons/ui/gear.svg
assets/icons/ui/help.svg
assets/icons/ui/hide.svg
assets/icons/ui/hourglass.svg
assets/icons/ui/info.svg
assets/icons/ui/image.svg
assets/icons/ui/lock.svg
assets/icons/ui/moveto.svg
assets/icons/ui/next.svg
assets/icons/ui/openwith.svg
assets/icons/ui/paperplane.svg
assets/icons/ui/pen.svg
assets/icons/ui/people.svg
assets/icons/ui/phone-download.svg
assets/icons/ui/plus.svg
assets/icons/ui/previous.svg
assets/icons/ui/rename.svg
assets/icons/ui/restore.svg
assets/icons/ui/share.svg
assets/icons/ui/small-arrow.svg
assets/icons/ui/spinner.svg
assets/icons/ui/sync.svg
assets/icons/ui/top-select.svg
assets/icons/ui/top.svg
assets/icons/ui/trash.svg
assets/icons/ui/upload.svg
assets/icons/ui/warn.svg
assets/icons/ui/warning.svg"

echo "Making icon sprite, output file : ${outfile}..."
echo $icons | xargs yarn svgstore --inline -o /tmp/icons-sprite.svg
echo "// GENERATED FILE, DO NOT EDIT THIS FILE BY HAND" > $outfile
echo "// Use yarn sprite to regenerate" >> $outfile
echo "module.exports = \``cat /tmp/icons-sprite.svg`\`" >> $outfile
