# GoDX Homebrew tap

`gx` — CLI của GoDX: đăng nhập GoDX ID, chọn tổ chức, và dùng các dịch vụ (Task, …) từ terminal.

## Cài đặt

```sh
brew install godx-jp/tap/gx
gx --version
```

macOS (Apple Silicon / Intel) và Linux (x86_64 / arm64). Không cần tài khoản GitHub.

## Bắt đầu

```sh
gx auth login        # mở trình duyệt để đăng nhập GoDX ID (máy không có trình duyệt: gx auth login --device)
gx context           # chọn tổ chức
gx task --help       # ví dụ: làm việc với GoDX Task
```

## Cập nhật

```sh
brew update && brew upgrade gx
```

## Gỡ bản cũ

Nếu `gx --version` vẫn in bản cũ sau khi cài, máy đang có một bản `gx` khác đứng trước Homebrew trong `PATH`:

```sh
which -a gx                      # bản của Homebrew là /opt/homebrew/bin/gx (Intel: /usr/local/bin/gx)
rm ~/.local/bin/gx               # xoá bản tự build/tải tay nếu có
hash -r && gx --version
```

Bản 0.9.x cũ (CLI "umbrella" trước đây) được `brew upgrade gx` thay thế tự động.

## Gỡ cài đặt

```sh
gx auth logout
brew uninstall gx && brew untap godx-jp/tap
```
