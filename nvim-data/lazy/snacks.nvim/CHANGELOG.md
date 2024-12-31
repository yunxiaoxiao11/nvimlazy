# Changelog

## [2.11.0](https://github.com/folke/snacks.nvim/compare/v2.10.0...v2.11.0) (2024-12-15)


### Features

* **indent:** properly handle continuation indents. Closes [#286](https://github.com/folke/snacks.nvim/issues/286) ([f2bb7fa](https://github.com/folke/snacks.nvim/commit/f2bb7fa94e4b9b1fa7f84066bbedea8b3d9875e3))
* **input:** allow configuring position of prompt and icon ([d0cb707](https://github.com/folke/snacks.nvim/commit/d0cb7070e98d6a2ca31d94dd04d7048c9b258f33))
* **notifier:** notification `history` option ([#297](https://github.com/folke/snacks.nvim/issues/297)) ([8f56e19](https://github.com/folke/snacks.nvim/commit/8f56e19f916f8075e2bfb534d723e3d850e256a4))
* **scope:** `Scope:inner` for indent based and treesitter scopes ([8a8b1c9](https://github.com/folke/snacks.nvim/commit/8a8b1c976fc2736a3b91697750074fd3b23a24c9))
* **scope:** added `__tostring` for debugging ([94e0849](https://github.com/folke/snacks.nvim/commit/94e0849c3aae3b818cad2804c256c57318256c72))
* **scope:** added `opts.cursor` to take cursor column into account for scope detection. (defaults to true). Closes [#282](https://github.com/folke/snacks.nvim/issues/282) ([54bc6ba](https://github.com/folke/snacks.nvim/commit/54bc6bab2dbd07270c8c3fd447e8b72f825c315c))
* **scope:** text objects now use treesitter scopes by default. See [#231](https://github.com/folke/snacks.nvim/issues/231) ([a953697](https://github.com/folke/snacks.nvim/commit/a9536973a9111c3c7b66fb51bc5f62be27850884))
* **statuscolumn:** allow left/right to be a function. Closes [#288](https://github.com/folke/snacks.nvim/issues/288) ([cb42b95](https://github.com/folke/snacks.nvim/commit/cb42b952c5d4047f8e805c02c7aa596eb4e45ef2))
* **util:** on_key handler ([002d5eb](https://github.com/folke/snacks.nvim/commit/002d5eb5c2710a4e7456dd572543369e8424fd64))
* **win:** win:line() ([17494ad](https://github.com/folke/snacks.nvim/commit/17494ad9bf98e82c6a16f032cb3c9c82e072371a))


### Bug Fixes

* **dashboard:** telescope can't be run from a `vim.schedule` for some reason ([dcc5338](https://github.com/folke/snacks.nvim/commit/dcc5338e6f2a825b78791c96829d7e5a29e3ea5d))
* **indent:** `opts.indent.blank` now defaults to `listchars.space`. Closes [#291](https://github.com/folke/snacks.nvim/issues/291) ([31bc409](https://github.com/folke/snacks.nvim/commit/31bc409342b00d406963de3e1f38f3a2f84cfdcb))
* **indent:** fixup ([14d71c3](https://github.com/folke/snacks.nvim/commit/14d71c3fb2856634a8697f7c9f01704980e49bd0))
* **indent:** honor lead listchar ([#303](https://github.com/folke/snacks.nvim/issues/303)) ([7db0cc9](https://github.com/folke/snacks.nvim/commit/7db0cc9281b23c71155422433b6f485675674932))
* **indent:** honor listchars and list when blank is `nil`. Closes [#296](https://github.com/folke/snacks.nvim/issues/296) ([0e150f5](https://github.com/folke/snacks.nvim/commit/0e150f5510e381753ddd18f29facba14716d5669))
* **indent:** lower priorities of indent guides ([7f66818](https://github.com/folke/snacks.nvim/commit/7f668185ea810304cef5cb166a51665d4859124b))
* **input:** check if parent win still exists. Fixes [#287](https://github.com/folke/snacks.nvim/issues/287) ([db768a5](https://github.com/folke/snacks.nvim/commit/db768a5497301aad7fcddae2fe578cb320cc9ca2))
* **input:** go back to insert mode if input was started from insert mode. Fixes [#287](https://github.com/folke/snacks.nvim/issues/287) ([5d00e6d](https://github.com/folke/snacks.nvim/commit/5d00e6dec5686d7d2a6d97288287892d117d579b))
* **input:** missing padding if neither title nor icon positioned left ([#292](https://github.com/folke/snacks.nvim/issues/292)) ([97542a7](https://github.com/folke/snacks.nvim/commit/97542a7d9bfc7f242acbaa9851a62c649222fec8))
* **input:** open input window with `noautocmd=true` set. Fixes [#287](https://github.com/folke/snacks.nvim/issues/287) ([26b7d4c](https://github.com/folke/snacks.nvim/commit/26b7d4cbd9f803d9f759fc00d0dc4caa0141048b))
* **scope:** add `indent` to `__eq` ([be2779e](https://github.com/folke/snacks.nvim/commit/be2779e942bee0932e9c14ef4ed3e4002be861ce))
* **scope:** better treesitter scope edge detection ([b7355c1](https://github.com/folke/snacks.nvim/commit/b7355c16fb441e33be993ade74130464b62304cf))
* **scroll:** check mousescroll before spamming ([3d67bda](https://github.com/folke/snacks.nvim/commit/3d67bda1e29b8e8108dd74d611bf5c8b42883838))
* **util:** on_key compat with Neovim 0.9 ([effa885](https://github.com/folke/snacks.nvim/commit/effa885120670ca8a1775fc16ab2ec9e8040c288))

## [2.10.0](https://github.com/folke/snacks.nvim/compare/v2.9.0...v2.10.0) (2024-12-13)


### Features

* **animate:** add done to animation object ([ec73346](https://github.com/folke/snacks.nvim/commit/ec73346b7d4a25e440538141d5b8c68e42a1047d))
* **lazygit:** respect existing LG_CONFIG_FILE when setting config paths ([#208](https://github.com/folke/snacks.nvim/issues/208)) ([ef114c0](https://github.com/folke/snacks.nvim/commit/ef114c0efede3339221df5bc5b250aa9f8328b8d))
* **scroll:** added spamming detection and disable animations when user is spamming keys :) ([c58605f](https://github.com/folke/snacks.nvim/commit/c58605f8b3abf974e984ca5483cbe6ab9d2afc6e))
* **scroll:** improve smooth scrolling when user is spamming keys ([5532ba0](https://github.com/folke/snacks.nvim/commit/5532ba07be1306eb05c727a27368a8311bae3eeb))
* **zen:** added on_open / on_close callbacks ([5851de1](https://github.com/folke/snacks.nvim/commit/5851de157a08c96a0ca15580ced2ea53063fd65d))
* **zen:** make zen/zoom mode work for floating windows. Closes [#5028](https://github.com/folke/snacks.nvim/issues/5028) ([05bb957](https://github.com/folke/snacks.nvim/commit/05bb95739a362f8bec382f164f07c53137244627))


### Bug Fixes

* **dashboard:** set cursor to non-hidden actionable items. Fixes [#273](https://github.com/folke/snacks.nvim/issues/273) ([7c7b18f](https://github.com/folke/snacks.nvim/commit/7c7b18fdeeb7e228463b41d805cb47327f3d03f1))
* **indent:** fix rendering issues when `only_scope` is set for indent. Fixes [#268](https://github.com/folke/snacks.nvim/issues/268) ([370703d](https://github.com/folke/snacks.nvim/commit/370703da81a19db9d8bf41bb518e7b6959e53cea))
* **indent:** only render adjusted top/bottom. See [#268](https://github.com/folke/snacks.nvim/issues/268) ([54294cb](https://github.com/folke/snacks.nvim/commit/54294cba6a17ec048a63837fa341e6a663f3217d))
* **notifier:** set `modifiable=false` for notifier history ([12e68a3](https://github.com/folke/snacks.nvim/commit/12e68a33b5a1fd3648a7a558ef027fbb245125f7))
* **scope:** change from/to selection to make more sense ([e8dd394](https://github.com/folke/snacks.nvim/commit/e8dd394c01699276e8f7214957625222c30c8e9e))
* **scope:** possible loop? See [#278](https://github.com/folke/snacks.nvim/issues/278) ([ac6a748](https://github.com/folke/snacks.nvim/commit/ac6a74823b29cc1839df82fc839b81400ca80d45))
* **scratch:** normalize filename ([5200a8b](https://github.com/folke/snacks.nvim/commit/5200a8baa59a96e73786c11192282d2d3e10deeb))
* **scroll:** don't animate scroll distance 1 ([a986851](https://github.com/folke/snacks.nvim/commit/a986851a74512683c3331fa72a220751026fd611))

## [2.9.0](https://github.com/folke/snacks.nvim/compare/v2.8.0...v2.9.0) (2024-12-12)


### Features

* **animate:** allow disabling all animations globally or per buffer ([25c290d](https://github.com/folke/snacks.nvim/commit/25c290d7c093f0c57473ffcccf56780b6d58dd37))
* **animate:** allow toggling buffer-local / global animations with or without id ([50912dc](https://github.com/folke/snacks.nvim/commit/50912dc2fd926a49e3574d7029aed11fae3fb45b))
* **dashboard:** add dashboard startuptime icon option ([#214](https://github.com/folke/snacks.nvim/issues/214)) ([63506d5](https://github.com/folke/snacks.nvim/commit/63506d5168d2bb7679026cab80df1adfe3cd98b8))
* **indent:** animation styles `out`, `up_down`, `up`, `down` ([0a9b013](https://github.com/folke/snacks.nvim/commit/0a9b013ff13f6d1a550af2eac366c73d25e55e0a))
* **indent:** don't animate indents when new scope overlaps with the previous one, taking white-space into account. See [#264](https://github.com/folke/snacks.nvim/issues/264) ([9b4a859](https://github.com/folke/snacks.nvim/commit/9b4a85905aaa114e04a9371585953e96b3095f93))
* **indent:** move animate settings top-level, since they impact both scope and chunk ([baf8c18](https://github.com/folke/snacks.nvim/commit/baf8c180d9dda5797b4da538f7af122f4349f554))
* **toggle:** added zoom toggle ([3367705](https://github.com/folke/snacks.nvim/commit/336770581348c137bc2cb3967cc2af90b2ff51a2))
* **toggle:** return toggle after map ([4f22016](https://github.com/folke/snacks.nvim/commit/4f22016b4b765f3335ae7682fb5b3b79b414ecbd))
* **util:** get var either from buffer or global ([4243912](https://github.com/folke/snacks.nvim/commit/42439123c4fbc088fbe0bdd636a6bdc501794491))


### Bug Fixes

* **indent:** make sure cursor line is in scope for the `out` style. Fixes [#264](https://github.com/folke/snacks.nvim/issues/264) ([39c009f](https://github.com/folke/snacks.nvim/commit/39c009fe0b45243ccbbd372e659dcbd9409a68df))
* **indent:** when at edge of two blocks, prefer the one below. See [#231](https://github.com/folke/snacks.nvim/issues/231) ([2457d91](https://github.com/folke/snacks.nvim/commit/2457d913dc92835da12fc071b43bce3a03d31470))

## [2.8.0](https://github.com/folke/snacks.nvim/compare/v2.7.0...v2.8.0) (2024-12-11)


### Features

* **animate:** added animate plugin ([971229e](https://github.com/folke/snacks.nvim/commit/971229e8a93dab7dc73fe379110cdb47a7fd1387))
* **animate:** added animation context to callbacks ([1091280](https://github.com/folke/snacks.nvim/commit/109128087709fe5cba39e6983b8722b60cce8120))
* **dim:** added dim plugin ([4dda551](https://github.com/folke/snacks.nvim/commit/4dda5516e88a64c2b387727662d4ecd645582c55))
* **indent:** added indent plugin ([2c4021c](https://github.com/folke/snacks.nvim/commit/2c4021c4663ff4fe5da5b95c3e06a4f6eb416502))
* **indent:** allow disabling indent guides. See [#230](https://github.com/folke/snacks.nvim/issues/230) ([4a4ad63](https://github.com/folke/snacks.nvim/commit/4a4ad633dc9f864532716af4387b5e035d57768c))
* **indent:** allow disabling scope highlighting ([99207ee](https://github.com/folke/snacks.nvim/commit/99207ee44d3a2b4d14c915b08407bae708749235))
* **indent:** optional rendering of scopes as chunks. Closes [#230](https://github.com/folke/snacks.nvim/issues/230) ([109a0d2](https://github.com/folke/snacks.nvim/commit/109a0d207eeee49e13a6640131b44383e31d0b0f))
* **input:** added `input` snack ([70902ee](https://github.com/folke/snacks.nvim/commit/70902eee9e5aca7791450c6065dd51bed4651f24))
* **profiler:** on_close can now be a function ([48a5879](https://github.com/folke/snacks.nvim/commit/48a58792a0dd2e3c9249cfa4b1df73a8ea86a290))
* **scope:** added scope plugin ([63a279c](https://github.com/folke/snacks.nvim/commit/63a279c4e2e84ed02b5a2a6c2f84d68daf8f906a))
* **scope:** fill the range for treesitter scopes ([38ed01b](https://github.com/folke/snacks.nvim/commit/38ed01b5a229fc0c41b07dde08e9119de9ff1c4e))
* **scope:** text objects and jumping for scopes. Closes [#231](https://github.com/folke/snacks.nvim/issues/231) ([8faafb3](https://github.com/folke/snacks.nvim/commit/8faafb34831c48f3ff777d6bd0ced1c68c8ab82f))
* **scroll:** added smooth scrolling plugin ([38a5ccc](https://github.com/folke/snacks.nvim/commit/38a5ccc3a6436ba67fba71f6a2a9693ee1c2f142))
* **scroll:** allow disabling scroll globally or for some buffers ([04f15c1](https://github.com/folke/snacks.nvim/commit/04f15c1ba29afa6d1b085eb0d85a654c88be8fde))
* **scroll:** use `on_key` to track mouse scrolling ([26c3e49](https://github.com/folke/snacks.nvim/commit/26c3e4960f37320bcd418ec18f859b0e24d1e7d8))
* **scroll:** user virtual columns while scrolling ([fefa6fd](https://github.com/folke/snacks.nvim/commit/fefa6fd6920a2f8a6e717ae856c14e32d5d76ddb))
* **snacks:** zen mode ([c509ea5](https://github.com/folke/snacks.nvim/commit/c509ea52b7b3487e3d904d9f3d55d20ad136facb))
* **toggle:** add which-key mappings when which-key loads ([c9f494b](https://github.com/folke/snacks.nvim/commit/c9f494bd9a4729722186d2631ca91192ffc19b40))
* **toggle:** add zen mode toggle ([#243](https://github.com/folke/snacks.nvim/issues/243)) ([9454ba3](https://github.com/folke/snacks.nvim/commit/9454ba35f8c6ad3baeda4132fe1e5c96a5850960))
* **toggle:** added toggle for smooth scroll ([aeec09c](https://github.com/folke/snacks.nvim/commit/aeec09c5413c87df7ca827bd6b7c3fbf0f4d2909))
* **toggle:** toggles for new plugins ([bddae83](https://github.com/folke/snacks.nvim/commit/bddae83141d9e18b23a5d7a9ccc52c76ad736ca2))
* **util:** added Snacks.util.on_module to execute a callback when a module loads (or immediately when already loaded) ([f540b7b](https://github.com/folke/snacks.nvim/commit/f540b7b6cc10223adcbd6d9747155a076ddfa9a4))
* **util:** set_hl no longer sets default=true when not specified ([d6309c6](https://github.com/folke/snacks.nvim/commit/d6309c62b8e5910407449975b9e333c2699d06d0))
* **win:** added actions to easily combine actions in keymaps ([46362a5](https://github.com/folke/snacks.nvim/commit/46362a5a9c2583094bd0416dd6dea17996eaecf9))
* **win:** allow configuring initial text to display in the buffer ([003ea8d](https://github.com/folke/snacks.nvim/commit/003ea8d6edcf6d813bfdc143ffe4fa6cc55c0ea5))
* **win:** allow customizing backdrop window ([cdb495c](https://github.com/folke/snacks.nvim/commit/cdb495cb8f7b801d9d731cdfa2c6f92fadf1317d))
* **win:** col/row can be negative calculated on height/end of parent ([bd49d2f](https://github.com/folke/snacks.nvim/commit/bd49d2f32e567cbe42adf0bd8582b7829de6c1dc))
* **words:** added toggle for words ([bd7cf03](https://github.com/folke/snacks.nvim/commit/bd7cf038234a84b48d1c1f09dffae9e64910ff7e))
* **zen:** `zz` when entering zen mode ([b5cb90f](https://github.com/folke/snacks.nvim/commit/b5cb90f91dedaa692c4da1dfa216d13e58ad219d))
* **zen:** added zen plugin ([afb89ea](https://github.com/folke/snacks.nvim/commit/afb89ea159a20e1241656af5aa46f638327d2f5a))
* **zen:** added zoom indicator ([8459e2a](https://github.com/folke/snacks.nvim/commit/8459e2adc090aaf59865a60836c360744d82ed0a))


### Bug Fixes

* **compat:** fixes for Neovim &lt; 0.10 ([33fbb30](https://github.com/folke/snacks.nvim/commit/33fbb309f8c21c8ec30b99fe323a5cc55c84c5bc))
* **dashboard:** add filetype to terminal sections ([#215](https://github.com/folke/snacks.nvim/issues/215)) ([9c68a54](https://github.com/folke/snacks.nvim/commit/9c68a54af652ff69348848dad62c4cd901da59a0))
* **dashboard:** don't open with startup option args ([#222](https://github.com/folke/snacks.nvim/issues/222)) ([6b78172](https://github.com/folke/snacks.nvim/commit/6b78172864ef94cd5f2ab184c0f98cf36f5a8e74))
* **dashboard:** override foldmethod ([47ad2a7](https://github.com/folke/snacks.nvim/commit/47ad2a7bfa49c3eb5c20083de82a39f59fb8f17a))
* **debug:** schedule wrap print ([3a107af](https://github.com/folke/snacks.nvim/commit/3a107afbf8dffabf6c2754750c51d740707b76af))
* **dim:** check if win still exist when animating. Closes [#259](https://github.com/folke/snacks.nvim/issues/259) ([69018d0](https://github.com/folke/snacks.nvim/commit/69018d070c9a0db76abc0f34539287e1c181a5d4))
* **health:** health checks ([72eba84](https://github.com/folke/snacks.nvim/commit/72eba841801928b00a1f1f74e1f976a31534a674))
* **indent:** always align indents with shiftwidth ([1de6c15](https://github.com/folke/snacks.nvim/commit/1de6c152883b576524201a465e1b8a09622a6041))
* **indent:** always render underline regardless of leftcol ([4e96e69](https://github.com/folke/snacks.nvim/commit/4e96e692e8a3c6c67f9c9b2971b6fa263461054b))
* **indent:** always use scope hl to render underlines. Fixes [#234](https://github.com/folke/snacks.nvim/issues/234) ([8723945](https://github.com/folke/snacks.nvim/commit/8723945183aac31671d1fa27481c90dc7c665c02))
* **indent:** better way of dealing with indents on blank lines. See [#246](https://github.com/folke/snacks.nvim/issues/246) ([c129683](https://github.com/folke/snacks.nvim/commit/c1296836f5c36e75b508aae9a76aa0931058feec))
* **indent:** expand scopes to inlude end_pos based on the end_pos scope. See [#231](https://github.com/folke/snacks.nvim/issues/231) ([897f801](https://github.com/folke/snacks.nvim/commit/897f8019248009eca191185cf7094e04c9371a85))
* **indent:** gradually increase scope when identical to visual selection for text objects ([bc7f96b](https://github.com/folke/snacks.nvim/commit/bc7f96bdee77368d4ddae2613823f085266529ab))
* **indent:** properly deal with empty lines when highlighting scopes. Fixes [#246](https://github.com/folke/snacks.nvim/issues/246). Fixes [#245](https://github.com/folke/snacks.nvim/issues/245) ([d04cf1d](https://github.com/folke/snacks.nvim/commit/d04cf1dc4f332bade99c300283380bf0893f1996))
* **indent:** set max_size=1 for textobjects and jumps by default. See [#231](https://github.com/folke/snacks.nvim/issues/231) ([5f217bc](https://github.com/folke/snacks.nvim/commit/5f217bca6adc88a5dc6aa55e5bf0580b95025a52))
* **indent:** set shiftwidth to tabstop when 0 ([782b6ee](https://github.com/folke/snacks.nvim/commit/782b6ee3fca35ede62b8dba866a9ad5c50edfdce))
* **indent:** underline. See [#234](https://github.com/folke/snacks.nvim/issues/234) ([51f9569](https://github.com/folke/snacks.nvim/commit/51f95693aedcde10e65c8121c6fd1293a3ac3819))
* **indent:** use correct config options ([5352198](https://github.com/folke/snacks.nvim/commit/5352198b5a59968c871b962fa15f1d7ca4eb7b52))
* **init:** enabled check ([519a45b](https://github.com/folke/snacks.nvim/commit/519a45bfe5df7fdf5aea0323e978e20eb52e15bc))
* **init:** set input disabled by default. Fixes [#227](https://github.com/folke/snacks.nvim/issues/227) ([e9d0993](https://github.com/folke/snacks.nvim/commit/e9d099322fca1bb7b35e781230e4a7478ded86bf))
* **input:** health check. Fixes [#239](https://github.com/folke/snacks.nvim/issues/239) ([acf743f](https://github.com/folke/snacks.nvim/commit/acf743fcfc4e0e42e1c9fe5c06f677849fa38e8b))
* **input:** set current win before executing callback. Fixes [#257](https://github.com/folke/snacks.nvim/issues/257) ([c17c1b2](https://github.com/folke/snacks.nvim/commit/c17c1b2f6c99f0ed4f3ab8f00bf32bb39f9d0186))
* **input:** set current win in `vim.schedule` so that it works properly from `expr` keymaps. Fixes [#257](https://github.com/folke/snacks.nvim/issues/257) ([8c2410c](https://github.com/folke/snacks.nvim/commit/8c2410c2de0a86c095177a831993f8eea78a63b6))
* **input:** update window position in the context of the parent window to make sure position=cursor works as expected. Fixes [#254](https://github.com/folke/snacks.nvim/issues/254) ([6c27ff2](https://github.com/folke/snacks.nvim/commit/6c27ff2a365c961831c7620365dd87fa8d8ad633))
* **input:** various minor visual fixes ([#252](https://github.com/folke/snacks.nvim/issues/252)) ([e01668c](https://github.com/folke/snacks.nvim/commit/e01668c36771c0c1424a2ce3ab26a09cbb43d472))
* **notifier:** toggle show history. Fixes [#197](https://github.com/folke/snacks.nvim/issues/197) ([8b58b55](https://github.com/folke/snacks.nvim/commit/8b58b55e40221ca5124f156f47e46185310fbe1c))
* **scope:** better edge detection for treesitter scopes ([6b02a09](https://github.com/folke/snacks.nvim/commit/6b02a09e5e81e4e38a42e0fcc2d7f0350404c228))
* **scope:** return `nil` when buffer is empty for indent scope ([4aa378a](https://github.com/folke/snacks.nvim/commit/4aa378a35e8f3d3771410344525cc4bc9ac50e8a))
* **scope:** take edges into account for min_size ([e2e6c86](https://github.com/folke/snacks.nvim/commit/e2e6c86d214029bfeae5d50929aee72f7059b7b7))
* **scope:** typo for textobject ([0324125](https://github.com/folke/snacks.nvim/commit/0324125ca1e5a5e6810d28ea81bb2c7c0af1dc16))
* **scroll:** better toggle ([3dcaad8](https://github.com/folke/snacks.nvim/commit/3dcaad8d0aacc1a736f75fee5719adbf80cbbfa2))
* **scroll:** disable scroll by default for terminals ([7b5a78a](https://github.com/folke/snacks.nvim/commit/7b5a78a5c76cdf2c73abbeef47ac14bb8ccbee72))
* **scroll:** don't animate invalid windows ([41ca13d](https://github.com/folke/snacks.nvim/commit/41ca13d119b328872ed1da9c8f458c5c24962d31))
* **scroll:** don't bother setting cursor when scrolloff is larger than half of viewport. Fixes [#240](https://github.com/folke/snacks.nvim/issues/240) ([0ca9ca7](https://github.com/folke/snacks.nvim/commit/0ca9ca79926b3bf473172eee7072fa2838509fba))
* **scroll:** move scrollbind check to M.check ([7211ec0](https://github.com/folke/snacks.nvim/commit/7211ec08ce01da754544f66e965effb13fd22fd3))
* **scroll:** only animate the current window when scrollbind is active ([c9880ce](https://github.com/folke/snacks.nvim/commit/c9880ce872ca000d17ae8d62b10e913045f54735))
* **scroll:** set cursor to correct position when target is reached. Fixes [#236](https://github.com/folke/snacks.nvim/issues/236) ([4209929](https://github.com/folke/snacks.nvim/commit/4209929e6d4f67d3d216d1ab5f52dc387c8e27c2))
* **scroll:** use actual scrolling to perform the scroll to properly deal with folds etc. Fixes [#236](https://github.com/folke/snacks.nvim/issues/236) ([280a09e](https://github.com/folke/snacks.nvim/commit/280a09e4eef08157eface8398295eb7fa3f9a08d))
* **win:** ensure win is set when relative=win ([5d472b8](https://github.com/folke/snacks.nvim/commit/5d472b833b7f925033fea164de0ab9e389e31bef))
* **words:** incorrect enabled check. Fixes [#247](https://github.com/folke/snacks.nvim/issues/247) ([9c8f3d5](https://github.com/folke/snacks.nvim/commit/9c8f3d531874ebd20eebe259f5c30cea575a1bba))
* **zen:** properly close existing zen window on toggle ([14da56e](https://github.com/folke/snacks.nvim/commit/14da56ee9791143ef2503816fb93f8bd2bf0b58d))
* **zen:** return after closing. Fixes [#259](https://github.com/folke/snacks.nvim/issues/259) ([b13eaf6](https://github.com/folke/snacks.nvim/commit/b13eaf6bd9089d8832c79f4088e72affc449c8ee))
* **zen:** when Normal is transparent, show an opaque transparent backdrop. Fixes [#235](https://github.com/folke/snacks.nvim/issues/235) ([d93de7a](https://github.com/folke/snacks.nvim/commit/d93de7af6916d2c734c9420624b8703236f386ff))


### Performance Improvements

* **animate:** check for animation easing updates ouside the main loop and schedule an update when needed ([03c0774](https://github.com/folke/snacks.nvim/commit/03c0774e8555a38267624309d4f00a30e351c4be))
* **input:** lazy-load `vim.ui.input` ([614df63](https://github.com/folke/snacks.nvim/commit/614df63acfb5ce9b1ac174ea4f09e545a086af4d))
* **util:** redraw helpers ([9fb88c6](https://github.com/folke/snacks.nvim/commit/9fb88c67b60cbd9d4a56f9aadcb9285929118518))

## [2.7.0](https://github.com/folke/snacks.nvim/compare/v2.6.0...v2.7.0) (2024-12-07)


### Features

* **bigfile:** disable matchparen, set foldmethod=manual, set conceallevel=0 ([891648a](https://github.com/folke/snacks.nvim/commit/891648a483b6f5410ec9c8b74890d5a00b50fa4c))
* **dashbard:** explude files from stdpath data/cache/state in recent files and projects ([b99bc64](https://github.com/folke/snacks.nvim/commit/b99bc64ef910cd075e4ab9cf0914e99e1a1d61c1))
* **dashboard:** allow items to be hidden, but still create the keymaps etc ([7a47eb7](https://github.com/folke/snacks.nvim/commit/7a47eb76df2fd36bfcf3ed5c4da871542e1386be))
* **dashboard:** allow terminal sections to have actions. Closes [#189](https://github.com/folke/snacks.nvim/issues/189) ([78f44f7](https://github.com/folke/snacks.nvim/commit/78f44f720b1b0609930581965f4f92649efae95b))
* **dashboard:** hide title if section has no items. Fixes [#184](https://github.com/folke/snacks.nvim/issues/184) ([d370be6](https://github.com/folke/snacks.nvim/commit/d370be6d6966a298725901abad4bec90264859af))
* **dashboard:** make buffer not listed ([#191](https://github.com/folke/snacks.nvim/issues/191)) ([42d6277](https://github.com/folke/snacks.nvim/commit/42d62775d82b7af4dbe001b04be6a8a6e461e8ec))
* **dashboard:** when a section has a title, use that for action and key. If not put it in the section. Fixes [#189](https://github.com/folke/snacks.nvim/issues/189) ([045a17d](https://github.com/folke/snacks.nvim/commit/045a17da069aae6221b2b3eae8610c2aa5ca03ea))
* **debug:** added `Snacks.debug.run()` to execute the buffer or selection with inlined print and errors ([e1fe4f5](https://github.com/folke/snacks.nvim/commit/e1fe4f5afed5c679fd2eed3486f17e8c0994b982))
* **gitbrowse:** added `line_count`. See [#186](https://github.com/folke/snacks.nvim/issues/186) ([f03727c](https://github.com/folke/snacks.nvim/commit/f03727c77f739503fd297dd12a826c2aca3490f9))
* **gitbrowse:** opts.notify ([a856952](https://github.com/folke/snacks.nvim/commit/a856952ab24757f4eaf4ae2e1728d097f1866681))
* **gitbrowse:** url pattern can now also be a function ([0a48c2e](https://github.com/folke/snacks.nvim/commit/0a48c2e726e6ca90370260a05618f45345dbb66a))
* **notifier:** reverse notif history by default for `show_history` ([5a50738](https://github.com/folke/snacks.nvim/commit/5a50738b8e952519658570f31ff5f24e06882f18))
* **scratch:** `opts.ft` can now be a function and defaults to the ft of the current buffer or markdown ([652303e](https://github.com/folke/snacks.nvim/commit/652303e6de5fa746709979425f4bed763e3fcbfa))
* **scratch:** change keymap to execute buffer/selection to `&lt;cr&gt;` ([7db0ed4](https://github.com/folke/snacks.nvim/commit/7db0ed4239a2f67c0ca288aaac21bc6aa65212a7))
* **scratch:** use `Snacks.debug.run()` to execute buffer/selection ([32c46b4](https://github.com/folke/snacks.nvim/commit/32c46b4e2f61c026e41b3fa128d01b0e89da106c))
* **snacks:** added `Snacks.profiler` ([8088799](https://github.com/folke/snacks.nvim/commit/808879951f960399844c89efef9aec1724f83402))
* **snacks:** added new `scratch` snack ([1cec695](https://github.com/folke/snacks.nvim/commit/1cec695fefb6e42ee644cfaf282612c213009aed))
* **toggle:** toggles for the profiler ([999ae07](https://github.com/folke/snacks.nvim/commit/999ae07808858df08d30eb099a8dbce401527008))
* **util:** encode/decode a string to be used as a filename ([e6f6397](https://github.com/folke/snacks.nvim/commit/e6f63970de2225ad44ed08af7ffd8a0f37d8fc58))
* **util:** simple function to get an icon ([7c29848](https://github.com/folke/snacks.nvim/commit/7c29848e89861b40e751cc15c557cf1e574acf66))
* **win:** added `opts.fixbuf` to configure fixed window buffers ([1f74d1c](https://github.com/folke/snacks.nvim/commit/1f74d1ce77d2015e2802027c93b9e0bcd548e4d1))
* **win:** backdrop can now be made opaque ([681b9c9](https://github.com/folke/snacks.nvim/commit/681b9c9d650e7b01a5e54567656f646fbd3b8d46))
* **win:** width/height can now be a function ([964d7ae](https://github.com/folke/snacks.nvim/commit/964d7ae99af1f45949175e1494562a796e2ef99b))


### Bug Fixes

* **dashboard:** calculate proper offset when item has no text ([6e3b954](https://github.com/folke/snacks.nvim/commit/6e3b9546de4871a696652cfcee6768c39e7b8ee9))
* **dashboard:** prevent possible duplicate recent files. Fixes [#171](https://github.com/folke/snacks.nvim/issues/171) ([93b254d](https://github.com/folke/snacks.nvim/commit/93b254d65845aa44ad1e01000c26e1faf5efb9a6))
* **dashboard:** take hidden items into account when calculating padding. Fixes [#194](https://github.com/folke/snacks.nvim/issues/194) ([736ce44](https://github.com/folke/snacks.nvim/commit/736ce447e8815eb231271abf7d49d8fa7d96e225))
* **dashboard:** take indent into account when calculating terminal width ([cda695e](https://github.com/folke/snacks.nvim/commit/cda695e53ffb34c7569dc3536134c9e432b2a1c1))
* **dashboard:** truncate file names when too long. Fixes [#183](https://github.com/folke/snacks.nvim/issues/183) ([4bdf7da](https://github.com/folke/snacks.nvim/commit/4bdf7daece384ab8a5472e6effd5fd6167a5ce6a))
* **debug:** better way of getting visual selection. See [#190](https://github.com/folke/snacks.nvim/issues/190) ([af41cb0](https://github.com/folke/snacks.nvim/commit/af41cb088d3ff8da9dede9fbdd5c81860bc37e64))
* **gitbrowse:** opts.notify ([2436557](https://github.com/folke/snacks.nvim/commit/243655796e4adddf58ce581f1b86a283130ecf41))
* **gitbrowse:** removed debug ([f894952](https://github.com/folke/snacks.nvim/commit/f8949523ed3f27f976e5346051a6658957d9492a))
* **gitbrowse:** use line_start and line_end directly in patterns. Closes [#186](https://github.com/folke/snacks.nvim/issues/186) ([adf0433](https://github.com/folke/snacks.nvim/commit/adf0433e8fca3fbc7287ac7b05f01f10ac354283))
* **profiler:** startup opts ([85f5132](https://github.com/folke/snacks.nvim/commit/85f51320b2662830a6435563668a04ab21686178))
* **scratch:** always set filetype on the buffer. Fixes [#179](https://github.com/folke/snacks.nvim/issues/179) ([6db50cf](https://github.com/folke/snacks.nvim/commit/6db50cfe2d1b333512e8175d072a2f82e796433d))
* **scratch:** floating window title/footer hl groups ([6c25ab1](https://github.com/folke/snacks.nvim/commit/6c25ab1108d12ef3642e97e3757710e69782cbd1))
* **scratch:** make sure win.opts.keys exists. See [#190](https://github.com/folke/snacks.nvim/issues/190) ([50bd510](https://github.com/folke/snacks.nvim/commit/50bd5103ba0a15294b1a931fda14900e7fd10161))
* **scratch:** sort keys. Fixes [#193](https://github.com/folke/snacks.nvim/issues/193) ([0df7a08](https://github.com/folke/snacks.nvim/commit/0df7a08b01b037e434efe7cd25e7d4608a282a92))
* **scratch:** weirdness with visual selection and inclusive/exclusive. See [#190](https://github.com/folke/snacks.nvim/issues/190) ([f955f08](https://github.com/folke/snacks.nvim/commit/f955f082e09683d02df3fd0f8b621b938f38e6aa))
* **statuscolumn:** add virtnum and relnum to cache key. See [#198](https://github.com/folke/snacks.nvim/issues/198) ([3647ca7](https://github.com/folke/snacks.nvim/commit/3647ca7d8a47362a01b539f5b6efc2d5339b5e8e))
* **statuscolumn:** don't show signs on virtual ligns. See [#198](https://github.com/folke/snacks.nvim/issues/198) ([f5fb59c](https://github.com/folke/snacks.nvim/commit/f5fb59cc4c62e25745bbefd2ef55665a67196245))
* **util:** better support for nvim-web-devicons ([ddaa2aa](https://github.com/folke/snacks.nvim/commit/ddaa2aaba59bbd05c03992bfb295c98ccd3b3e50))
* **util:** make sure to always return an icon ([ca7188c](https://github.com/folke/snacks.nvim/commit/ca7188c531350fe313c211ad60a59d642749f93e))
* **win:** allow resolving nil window option values. Fixes [#179](https://github.com/folke/snacks.nvim/issues/179) ([0043fa9](https://github.com/folke/snacks.nvim/commit/0043fa9ee142b63ab653507f2e6f45395e8a23d5))
* **win:** don't force close modified buffers ([d517b11](https://github.com/folke/snacks.nvim/commit/d517b11cabf94bf833d020c7a0781122d0f48c06))
* **win:** update opts.wo for padding instead of vim.wo directly ([446f502](https://github.com/folke/snacks.nvim/commit/446f50208fe823787ce60a8b216a622a4b6b63dd))
* **win:** update window local options when the buffer changes ([630d96c](https://github.com/folke/snacks.nvim/commit/630d96cf1f0403352580f2d119fc3b3ba29e33a4))


### Performance Improvements

* **dashboard:** properly cleanup autocmds ([8e6d977](https://github.com/folke/snacks.nvim/commit/8e6d977ec985a1b3f12a53741df82881a7835f9a))
* **statuscolumn:** optimize caching ([d972bc0](https://github.com/folke/snacks.nvim/commit/d972bc0a471fbf3067a115924a4add852d15f5f0))

## [2.6.0](https://github.com/folke/snacks.nvim/compare/v2.5.0...v2.6.0) (2024-11-29)


### Features

* **config:** allow overriding resolved options for a plugin. See [#164](https://github.com/folke/snacks.nvim/issues/164) ([d730a13](https://github.com/folke/snacks.nvim/commit/d730a13b5519fa901114cbdd0b2d484067068cce))
* **config:** make it easier to use examples in your config ([6e3cb7e](https://github.com/folke/snacks.nvim/commit/6e3cb7e53c0a1b314203d392dc1b7df8207a31a6))
* **dashboard:** allow passing win=0, buf=0 to use for the dashboard instead of creating a new window ([417e07c](https://github.com/folke/snacks.nvim/commit/417e07c0d22173a0a50ed8207e913ba25b96088e))
* **dashboard:** always render cache even when expired. Then refresh when needed. ([59f8f0d](https://github.com/folke/snacks.nvim/commit/59f8f0db99e7a2d4f6a181f02f3fe77355c016c8))
* **gitbrowse:** add Bitbucket URL patterns ([#163](https://github.com/folke/snacks.nvim/issues/163)) ([53441c9](https://github.com/folke/snacks.nvim/commit/53441c97030dbc15b4a22d56e33054749a13750f))
* **gitbrowse:** open commit when word is valid hash ([#161](https://github.com/folke/snacks.nvim/issues/161)) ([59c8eb3](https://github.com/folke/snacks.nvim/commit/59c8eb36ae6933dd54d87811fec22decfe4f303c))
* **health:** check that snacks.nvim plugin spec is correctly setup ([2c7b4b7](https://github.com/folke/snacks.nvim/commit/2c7b4b7971c8b488cfc9949f402f6c0307e24fce))
* **notifier:** added history opts.reverse ([bebd7e7](https://github.com/folke/snacks.nvim/commit/bebd7e70cdd336dcc582227c2f3bd6ea0cef60d9))
* **win:** go back to the previous window, when closing a snacks window ([51996df](https://github.com/folke/snacks.nvim/commit/51996dfeac5f0936aa1196e90b28760eb028ac1a))


### Bug Fixes

* **config:** check correct var for single config result. Fixes [#167](https://github.com/folke/snacks.nvim/issues/167) ([45fd0ef](https://github.com/folke/snacks.nvim/commit/45fd0efe41a453f1fa54a0892d352b931d6f88bb))
* **dashboard:** fixed mini.sessions.read. Fixes [#144](https://github.com/folke/snacks.nvim/issues/144) ([4e04b70](https://github.com/folke/snacks.nvim/commit/4e04b70ea3f6f91ae47e0fc7671e53e801171290))
* **dashboard:** terminal commands get 5 seconds to complete to trigger caching ([f83a7b0](https://github.com/folke/snacks.nvim/commit/f83a7b0ffb13adfae55a464f4d99fe3d4b578fe6))
* **git:** make git.get_root work for work-trees and cache git root checks. Closes [#136](https://github.com/folke/snacks.nvim/issues/136). Fixes [#115](https://github.com/folke/snacks.nvim/issues/115) ([9462273](https://github.com/folke/snacks.nvim/commit/9462273bf7c0e627da0f412c02daee907947078d))
* **init:** use rawget when loading modules to prevent possible recursive loading with invalid module fields ([d0794dc](https://github.com/folke/snacks.nvim/commit/d0794dcf8e988cf70c8db705a6e65867ba3b6e30))
* **notifier:** always show notifs directly when blocking ([0c7f7c5](https://github.com/folke/snacks.nvim/commit/0c7f7c5970d204d62488a4e351f1f1514a2a42e5))
* **notifier:** gracefully handle E565 errors ([0bbc9e7](https://github.com/folke/snacks.nvim/commit/0bbc9e7ae65820bc5ee356e1321656a7106d409a))
* **statuscolumn:** bad copy/paste!! Fixes [#152](https://github.com/folke/snacks.nvim/issues/152) ([7564a30](https://github.com/folke/snacks.nvim/commit/7564a30cad803c01f8ecc15683a280d2f0e9bdb7))
* **statuscolumn:** never error (in case of E565 for example). Fixes [#150](https://github.com/folke/snacks.nvim/issues/150) ([cf84008](https://github.com/folke/snacks.nvim/commit/cf840087c5adf1c076b61fdd044ac960b31e4e1e))
* **win:** handle E565 errors on close ([0b02044](https://github.com/folke/snacks.nvim/commit/0b020449ad8496c6bfd34e10bc69f807b52970f8))


### Performance Improvements

* **statuscolumn:** some small optims ([985be4a](https://github.com/folke/snacks.nvim/commit/985be4a759f6fe83e569679da431eeb7d2db5286))

## [2.5.0](https://github.com/folke/snacks.nvim/compare/v2.4.0...v2.5.0) (2024-11-22)


### Features

* **dashboard:** added Snacks.dashboard.update(). Closes [#121](https://github.com/folke/snacks.nvim/issues/121) ([c770ebe](https://github.com/folke/snacks.nvim/commit/c770ebeaf7b19abad8a447ef55b48cec71e7db54))
* **debug:** profile title ([0177079](https://github.com/folke/snacks.nvim/commit/017707955f465335900c4fd483c32df018fd3427))
* **notifier:** show indicator when notif has more lines. Closes [#112](https://github.com/folke/snacks.nvim/issues/112) ([cf72c06](https://github.com/folke/snacks.nvim/commit/cf72c06ee61f3102bf828ee7e8dde20316310374))
* **terminal:** added Snacks.terminal.get(). Closes [#122](https://github.com/folke/snacks.nvim/issues/122) ([7f63d4f](https://github.com/folke/snacks.nvim/commit/7f63d4fefb7ba22f6e98986f7adeb04f9f9369b1))
* **util:** get hl color ([b0da066](https://github.com/folke/snacks.nvim/commit/b0da066536493b6ed977744e4ee91fac01fcc2a8))
* **util:** set_hl managed ([9642695](https://github.com/folke/snacks.nvim/commit/96426953a029b12d02ad45849e086c1ee14e065b))


### Bug Fixes

* **dashboard:** `vim.pesc` for auto keys. Fixes [#134](https://github.com/folke/snacks.nvim/issues/134) ([aebffe5](https://github.com/folke/snacks.nvim/commit/aebffe535b09237b28d2c61bb3febab12bc95ae8))
* **dashboard:** align should always set width even if no alignment is needed. Fixes [#137](https://github.com/folke/snacks.nvim/issues/137) ([54d521c](https://github.com/folke/snacks.nvim/commit/54d521cd0fde5e3ccf36716f23371707d0267768))
* **dashboard:** better git check for advanced example. See [#126](https://github.com/folke/snacks.nvim/issues/126) ([b4a293a](https://github.com/folke/snacks.nvim/commit/b4a293aac747fbde7aafa72242a2d26dc17e325d))
* **dashboard:** open fullscreen on relaunch ([853240b](https://github.com/folke/snacks.nvim/commit/853240bb207ed7a2366c6c63ffc38f3b26fd484f))
* **dashboard:** randomseed needs argument on stable ([c359164](https://github.com/folke/snacks.nvim/commit/c359164872e82646e11c652fb0fbe723e58bfdd8))
* **debug:** include `main` in caller ([33d31af](https://github.com/folke/snacks.nvim/commit/33d31af1501ec154dba6008064d17ab72ec37d00))
* **git:** get_root should work for non file buffers ([723d8ea](https://github.com/folke/snacks.nvim/commit/723d8eac849749e9015d9e9598f99974684ca3bb))
* **notifier:** hide existing nofif if higher prio notif arrives and no free space for lower notif ([7a061de](https://github.com/folke/snacks.nvim/commit/7a061de75f758db23cf2c2ee0822a76356b54035))
* **quickfile:** don't load when bigfile detected. Fixes [#116](https://github.com/folke/snacks.nvim/issues/116) ([978424c](https://github.com/folke/snacks.nvim/commit/978424ce280ec85e78e9660b200aee9aa12e9ef2))
* **sessions:** change persisted.nvim load session command ([#118](https://github.com/folke/snacks.nvim/issues/118)) ([26bec4b](https://github.com/folke/snacks.nvim/commit/26bec4b51d617cd275218e9935fdff5390c18a87))
* **terminal:** hide on `q` instead of close ([30a0721](https://github.com/folke/snacks.nvim/commit/30a0721d56993a7125a247a07116f1a07e0efda4))

## [2.4.0](https://github.com/folke/snacks.nvim/compare/v2.3.0...v2.4.0) (2024-11-19)


### Features

* **dashboard:** hide tabline and statusline when loading during startup ([75dc74c](https://github.com/folke/snacks.nvim/commit/75dc74c5dc933b81cde85e8bc368a384343af69f))
* **dashboard:** when an item is wider than pane width and only one pane, then center it. See [#108](https://github.com/folke/snacks.nvim/issues/108) ([c15953e](https://github.com/folke/snacks.nvim/commit/c15953ee885cf8afb40dcd478569d7de2edae939))
* **gitbrowse:** open also visual selection range ([#89](https://github.com/folke/snacks.nvim/issues/89)) ([c29c0d4](https://github.com/folke/snacks.nvim/commit/c29c0d48500cb976c9210bb2d42909ad203cd4aa))
* **win:** detect alien buffers opening in managed windows and open them somewhere else. Fixes [#110](https://github.com/folke/snacks.nvim/issues/110) ([9c0d2e2](https://github.com/folke/snacks.nvim/commit/9c0d2e2e93615e70627e5c09c7bbb04e93eab2c6))


### Bug Fixes

* **dashboard:** always hide cursor ([68fcc25](https://github.com/folke/snacks.nvim/commit/68fcc258023404a0a0341a7cc93db47cd17f85f4))
* **dashboard:** check session managers in order ([1acea8b](https://github.com/folke/snacks.nvim/commit/1acea8b94005620dad70dfde6a6344c130a57c59))
* **dashboard:** fix race condition when sending data while closing ([4188446](https://github.com/folke/snacks.nvim/commit/4188446f86b5c6abae090eb6abca65d5d9bb8003))
* **dashboard:** minimum one pane even when it doesn't fit the screen. Fixes [#104](https://github.com/folke/snacks.nvim/issues/104) ([be8feef](https://github.com/folke/snacks.nvim/commit/be8feef4ab584f50aaa96b69d50b3f86a35aacff))
* **dashboard:** only check for piped stdin when in TUI. Ignore GUIs ([3311d75](https://github.com/folke/snacks.nvim/commit/3311d75f893191772a1b9525b18b94d8c3a8943a))
* **dashboard:** remove weird preset.keys function override. Just copy defaults if you want to change them ([0b9e09c](https://github.com/folke/snacks.nvim/commit/0b9e09cbd97c178ebe5db78fd373448448c5511b))

## [2.3.0](https://github.com/folke/snacks.nvim/compare/v2.2.0...v2.3.0) (2024-11-18)


### Features

* added dashboard health checks ([deb00d0](https://github.com/folke/snacks.nvim/commit/deb00d0ddc57d77f5f6c3e5510ba7c2f07e593eb))
* **dashboard:** added support for mini.sessions ([c8e209e](https://github.com/folke/snacks.nvim/commit/c8e209e6be9e8d8cdee19842a99ae7b89ac4248d))
* **dashboard:** allow opts.preset.keys to be a function with default keymaps as arg ([b7775ec](https://github.com/folke/snacks.nvim/commit/b7775ec879e14362d8e4082b7ed97a752bbb654a))
* **dashboard:** automatically detect streaming commands and don't cache those. tty-clock, cmatrix galore. Fixes [#100](https://github.com/folke/snacks.nvim/issues/100) ([082beb5](https://github.com/folke/snacks.nvim/commit/082beb508ccf3584aebfee845c1271d9f8b8abb6))
* **notifier:** timeout=0 keeps the notif visible till manually hidden. Closes [#102](https://github.com/folke/snacks.nvim/issues/102) ([0cf22a8](https://github.com/folke/snacks.nvim/commit/0cf22a8d87f28759c083969d67b55498e568a1b7))


### Bug Fixes

* **dashboard:** check uis for headless and stdin_tty. Fixes [#97](https://github.com/folke/snacks.nvim/issues/97). Fixes [#98](https://github.com/folke/snacks.nvim/issues/98) ([4ff08f1](https://github.com/folke/snacks.nvim/commit/4ff08f1c4d7b7b5d3e1da3b2cc9d6c341cd4dc1a))
* **dashboard:** debug output ([c0129da](https://github.com/folke/snacks.nvim/commit/c0129da4f839fd4306627b087cb722ea54c50c18))
* **dashboard:** disable `vim.wo.colorcolumn` ([#101](https://github.com/folke/snacks.nvim/issues/101)) ([43b4abb](https://github.com/folke/snacks.nvim/commit/43b4abb9f11a07d7130b461f9bd96b3e4e3c5b94))
* **dashboard:** notify on errors. Fixes [#99](https://github.com/folke/snacks.nvim/issues/99) ([2ae4108](https://github.com/folke/snacks.nvim/commit/2ae410889cbe6f59fb52f40cb86b25d6f7e874e2))
* **debug:** MYVIMRC is not always set ([735f4d8](https://github.com/folke/snacks.nvim/commit/735f4d8c9de6fcff31bce671495569f345818ea0))
* **notifier:** also handle timeout = false / timeout = true. See [#102](https://github.com/folke/snacks.nvim/issues/102) ([99f1f49](https://github.com/folke/snacks.nvim/commit/99f1f49104d413dabee9ee45bc22366aee97056e))

## [2.2.0](https://github.com/folke/snacks.nvim/compare/v2.1.0...v2.2.0) (2024-11-18)


### Features

* **dashboard:** added new `dashboard` snack ([#77](https://github.com/folke/snacks.nvim/issues/77)) ([d540fa6](https://github.com/folke/snacks.nvim/commit/d540fa607c415b55f5a0d773f561c19cd6287de4))
* **debug:** Snacks.debug.trace and Snacks.debug.stats for hierarchical traces (like lazy profile) ([b593598](https://github.com/folke/snacks.nvim/commit/b593598859b1bb3946671fc78ee1896d32460552))
* **notifier:** global keep when in cmdline ([73b1e20](https://github.com/folke/snacks.nvim/commit/73b1e20d38d4d238316ed391faf3d7ad4c3e71be))

## [2.1.0](https://github.com/folke/snacks.nvim/compare/v2.0.0...v2.1.0) (2024-11-16)


### Features

* **notifier:** allow specifying a minimal level to show notifications. See [#82](https://github.com/folke/snacks.nvim/issues/82) ([ec9cfb3](https://github.com/folke/snacks.nvim/commit/ec9cfb36b1ea2b4bf21b5812791c8bfee3bcf322))
* **terminal:** when terminal terminates too quickly, don't close the window and show an error message. See [#80](https://github.com/folke/snacks.nvim/issues/80) ([313954e](https://github.com/folke/snacks.nvim/commit/313954efdfb064a85df731b29fa9b86bc711044a))


### Bug Fixes

* **docs:** typo in README.md ([#78](https://github.com/folke/snacks.nvim/issues/78)) ([dc0f404](https://github.com/folke/snacks.nvim/commit/dc0f4041dcc8da860bdf84c3bf27d41a6a4debf3))
* **example:** rename file. Closes [#76](https://github.com/folke/snacks.nvim/issues/76) ([00c7a67](https://github.com/folke/snacks.nvim/commit/00c7a674004665999fbea310a322f1e105e1cfb5))
* **notifier:** no gap in border without title/icon ([#85](https://github.com/folke/snacks.nvim/issues/85)) ([bc80bdc](https://github.com/folke/snacks.nvim/commit/bc80bdcc62efd236617dbbd183ce5882aded2145))
* **win:** delay when closing windows ([#81](https://github.com/folke/snacks.nvim/issues/81)) ([d3dc8e7](https://github.com/folke/snacks.nvim/commit/d3dc8e7c27a663e4b30579e4e1ca3313052d0874))

## [2.0.0](https://github.com/folke/snacks.nvim/compare/v1.2.0...v2.0.0) (2024-11-14)


### ⚠ BREAKING CHANGES

* **config:** plugins are no longer enabled by default. Pass any options, or set `enabled = true`.

### Features

* **config:** plugins are no longer enabled by default. Pass any options, or set `enabled = true`. ([797708b](https://github.com/folke/snacks.nvim/commit/797708b0384ddfd66118651c48c3b399e376cb77))
* **health:** added health checks to plugins ([1c4c748](https://github.com/folke/snacks.nvim/commit/1c4c74828fcca382f54817f4446649b201d56557))
* **terminal:** added `Snacks.terminal.colorize()` to replace ansi codes by colors ([519b684](https://github.com/folke/snacks.nvim/commit/519b6841c42c575aec2ffc6c79c4e0a1a13e74bd))


### Bug Fixes

* **lazygit:** not needed to use deprecated fallback for set_hl ([14f076e](https://github.com/folke/snacks.nvim/commit/14f076e039aa876ba086449a45053d847bddb3db))
* **notifier:** disable `colorcolumn` by default ([#66](https://github.com/folke/snacks.nvim/issues/66)) ([7627b81](https://github.com/folke/snacks.nvim/commit/7627b81d9f3453bd2e979d48d3eff2787e6029e9))
* **statuscolumn:** ensure Snacks exists when loading before plugin loaded ([97e0e1e](https://github.com/folke/snacks.nvim/commit/97e0e1ec7f1088ee026efdaa789d102461ad49d4))
* **terminal:** properly deal with args in `vim.o.shell`. Fixes [#69](https://github.com/folke/snacks.nvim/issues/69) ([2ccb70f](https://github.com/folke/snacks.nvim/commit/2ccb70fd3a42d188c95db233bfb7469259d56fb6))
* **win:** take border into account for window position ([#64](https://github.com/folke/snacks.nvim/issues/64)) ([f0e47fd](https://github.com/folke/snacks.nvim/commit/f0e47fd5dc3ccc71cdd8866e2ce82749d3797fbb))

## [1.2.0](https://github.com/folke/snacks.nvim/compare/v1.1.0...v1.2.0) (2024-11-11)


### Features

* **bufdelete:** added `wipe` option. Closes [#38](https://github.com/folke/snacks.nvim/issues/38) ([5914cb1](https://github.com/folke/snacks.nvim/commit/5914cb101070956a73462dcb1c81c8462e9e77d7))
* **lazygit:** allow overriding extra lazygit config options ([d2f4f19](https://github.com/folke/snacks.nvim/commit/d2f4f1937e6fa97a48d5839d49f1f3012067bf45))
* **notifier:** added `refresh` option configurable ([df8c9d7](https://github.com/folke/snacks.nvim/commit/df8c9d7724ade9f3c63277f08b237ac3b32b6cfe))
* **notifier:** added backward compatibility for nvim-notify's replace option ([9b9777e](https://github.com/folke/snacks.nvim/commit/9b9777ec3bba97b3ddb37bd824a9ef9a46955582))
* **words:** add `fold_open` and `set_jump_point` config options ([#31](https://github.com/folke/snacks.nvim/issues/31)) ([5dc749b](https://github.com/folke/snacks.nvim/commit/5dc749b045e62e30a156ca8522416a6d1ca9a959))


### Bug Fixes

* added compatibility with Neovim &gt;= 0.9.4 ([4f99818](https://github.com/folke/snacks.nvim/commit/4f99818b0ab98510ab8987a0427afc515fb5f76b))
* **bufdelete:** opts.wipe. See [#38](https://github.com/folke/snacks.nvim/issues/38) ([0efbb93](https://github.com/folke/snacks.nvim/commit/0efbb93e0a4405b955d574746eb57ef6d48ae386))
* **notifier:** take title/footer into account to determine notification width. Fixes [#54](https://github.com/folke/snacks.nvim/issues/54) ([09a6f17](https://github.com/folke/snacks.nvim/commit/09a6f17eccbb551797f522403033f48e63a25f74))
* **notifier:** update layout on vim resize ([7f9f691](https://github.com/folke/snacks.nvim/commit/7f9f691a12d0665146b25a44323f21e18aa46c24))
* **terminal:** `gf` properly opens file ([#45](https://github.com/folke/snacks.nvim/issues/45)) ([340cc27](https://github.com/folke/snacks.nvim/commit/340cc2756e9d7ef0ae9a6f55cdfbfdca7a9defa7))
* **terminal:** pass a list of strings to termopen to prevent splitting. Fixes [#59](https://github.com/folke/snacks.nvim/issues/59) ([458a84b](https://github.com/folke/snacks.nvim/commit/458a84bd1db856c21f234a504ec384191a9899cf))


### Performance Improvements

* **notifier:** only force redraw for new windows and for updated while search is not active. Fixes [#52](https://github.com/folke/snacks.nvim/issues/52) ([da86b1d](https://github.com/folke/snacks.nvim/commit/da86b1deff9a0b1bb66f344241fb07577b6463b8))
* **win:** don't try highlighting snacks internal filetypes ([eb8ab37](https://github.com/folke/snacks.nvim/commit/eb8ab37f6ac421eeda2570257d2279bd12700667))
* **win:** prevent treesitter and syntax attaching to scratch buffers ([cc80f6d](https://github.com/folke/snacks.nvim/commit/cc80f6dc1b7a286cb06c6321bfeb1046f7a59418))

## [1.1.0](https://github.com/folke/snacks.nvim/compare/v1.0.0...v1.1.0) (2024-11-08)


### Features

* **bufdelete:** optional filter and shortcuts to delete `all` and `other` buffers. Closes [#11](https://github.com/folke/snacks.nvim/issues/11) ([71a2346](https://github.com/folke/snacks.nvim/commit/71a234608ffeebfa8a04c652834342fa9ce508c3))
* **debug:** simple log function to quickly log something to a debug.log file ([fc2a8e7](https://github.com/folke/snacks.nvim/commit/fc2a8e74686c7c347ed0aaa5eb607874ecdca288))
* **docs:** docs for highlight groups ([#13](https://github.com/folke/snacks.nvim/issues/13)) ([964cd6a](https://github.com/folke/snacks.nvim/commit/964cd6aa76f3608c7e379b8b1a483ae19f57e279))
* **gitbrowse:** choose to open repo, branch or file. Closes [#10](https://github.com/folke/snacks.nvim/issues/10). Closes [#17](https://github.com/folke/snacks.nvim/issues/17) ([92da87c](https://github.com/folke/snacks.nvim/commit/92da87c910a9b1421e8baae2e67020565526fba8))
* **notifier:** added history to notifier. Closes [#14](https://github.com/folke/snacks.nvim/issues/14) ([65d8c8f](https://github.com/folke/snacks.nvim/commit/65d8c8f00b6589b44410301b790d97c268f86f85))
* **notifier:** added option to show notifs top-down or bottom-up. Closes [#9](https://github.com/folke/snacks.nvim/issues/9) ([080e0d4](https://github.com/folke/snacks.nvim/commit/080e0d403924e1e62d3b88412a41f3ab22594049))
* **notifier:** allow overriding hl groups per notification ([8bcb2bc](https://github.com/folke/snacks.nvim/commit/8bcb2bc805a1785208f96ad7ad96690eee50c925))
* **notifier:** allow setting dynamic options ([36e9f45](https://github.com/folke/snacks.nvim/commit/36e9f45302bc9c200c76349ecd79a319a5944d8c))
* **win:** added default hl groups for windows ([8c0f10b](https://github.com/folke/snacks.nvim/commit/8c0f10b9dade154d355e31aa3f9c8c0ba212205e))
* **win:** allow setting `ft` just for highlighting without actually changing the `filetype` ([cad236f](https://github.com/folke/snacks.nvim/commit/cad236f9bbe46fbb53127014731d8507a3bc80af))
* **win:** disable winblend when colorscheme is transparent. Fixes [#26](https://github.com/folke/snacks.nvim/issues/26) ([12077bc](https://github.com/folke/snacks.nvim/commit/12077bcf65554b585b1f094c69746df402433132))
* **win:** equalize splits ([e982aab](https://github.com/folke/snacks.nvim/commit/e982aabefdf0b1d00ddd850152921e577cd980cc))
* **win:** util methods to handle buffer text ([d3efb92](https://github.com/folke/snacks.nvim/commit/d3efb92aa546eb160782e24e305f74a559eec212))
* **win:** win:focus() ([476fb56](https://github.com/folke/snacks.nvim/commit/476fb56bfd8e32a2805f46fadafbc4eee7878597))
* **words:** `jump` optionally shows notification with reference count ([#23](https://github.com/folke/snacks.nvim/issues/23)) ([6a3f865](https://github.com/folke/snacks.nvim/commit/6a3f865357005c934e2b5ad2cfadaa038775e9e0))
* **words:** configurable mode to show references. Defaults to n, i, c. Closes [#18](https://github.com/folke/snacks.nvim/issues/18) ([d079fbf](https://github.com/folke/snacks.nvim/commit/d079fbfe354ebfec18c4e1bfd7fee695703e3692))


### Bug Fixes

* **config:** deepcopy config where needed ([6c76f91](https://github.com/folke/snacks.nvim/commit/6c76f913981663ec0dba39686018cbc2ff3220b8))
* **config:** fix reading config during setup. Fixes [#2](https://github.com/folke/snacks.nvim/issues/2) ([0d91a4e](https://github.com/folke/snacks.nvim/commit/0d91a4e364866e407901020b59121883cbfb1cf1))
* **notifier:** re-apply winhl since level might have changed with a replace ([b8cc93e](https://github.com/folke/snacks.nvim/commit/b8cc93e273fd481f2b3b7785f64e301d70fd8e45))
* **notifier:** set default conceallevel=2 ([662795c](https://github.com/folke/snacks.nvim/commit/662795c2855b7bfd5e6ec254e469284dacdabb3f))
* **notifier:** try to keep layout when replacing notifs ([9bdb24e](https://github.com/folke/snacks.nvim/commit/9bdb24e735458ea4fd3974939c33ea78cbba0212))
* **terminal:** dont overwrite user opts ([0b08d28](https://github.com/folke/snacks.nvim/commit/0b08d280b605b2e460c1fd92bc87152e66f14430))
* **terminal:** user options ([334895c](https://github.com/folke/snacks.nvim/commit/334895c5bb2ed04f65800abaeb91ccb0487b0f1f))
* **win:** better winfixheight and winfixwidth for splits ([8be14c6](https://github.com/folke/snacks.nvim/commit/8be14c68a7825fff90ca071f0650657ba88da423))
* **win:** disable sidescroloff in minimal style ([107d10b](https://github.com/folke/snacks.nvim/commit/107d10b52e54828606a645517b55802dd807e8ad))
* **win:** dont center float when `relative="cursor"` ([4991e34](https://github.com/folke/snacks.nvim/commit/4991e347dcc6ff6c14443afe9b4d849a67b67944))
* **win:** properly resolve user styles as last ([cc5ee19](https://github.com/folke/snacks.nvim/commit/cc5ee192caf79446d58cbc09487268aa1f86f405))
* **win:** set border to none for backdrop windows ([#19](https://github.com/folke/snacks.nvim/issues/19)) ([f5602e6](https://github.com/folke/snacks.nvim/commit/f5602e60c325f0c60eb6f2869a7222beb88a773c))
* **win:** simpler way to add buffer padding ([f59237f](https://github.com/folke/snacks.nvim/commit/f59237f1dcdceb646bf2552b69b7e2040f80f603))
* **win:** update win/buf opts when needed ([5fd9c42](https://github.com/folke/snacks.nvim/commit/5fd9c426e850c02489943d7177d9e7fddec5e589))
* **words:** disable notify_jump by default ([9576081](https://github.com/folke/snacks.nvim/commit/9576081e871a801f60367e7180543fa41c384755))


### Performance Improvements

* **notifier:** index queue by id ([5df4394](https://github.com/folke/snacks.nvim/commit/5df4394c60958635bf4651d8d7e25f53f48a3965))
* **notifier:** optimize layout code ([8512896](https://github.com/folke/snacks.nvim/commit/8512896228b3e37e3d02c68fa739749c9f0b9838))
* **notifier:** skip processing queue when free space is smaller than min height ([08190a5](https://github.com/folke/snacks.nvim/commit/08190a545857ef09cb6ada4337fe7ec67d3602a9))
* **win:** skip events when setting buf/win options. Trigger FileType on BufEnter only if needed ([61496a3](https://github.com/folke/snacks.nvim/commit/61496a3ef00bd67afb7affcb4933905910a6283c))

## 1.0.0 (2024-11-06)


### Features

* added debug ([6cb43f6](https://github.com/folke/snacks.nvim/commit/6cb43f603360c6fc702b5d7c928dfde22d886e2f))
* added git ([f0a9991](https://github.com/folke/snacks.nvim/commit/f0a999134738c54dccb78ae462774eb228614221))
* added gitbrowse ([a638d8b](https://github.com/folke/snacks.nvim/commit/a638d8bafef85ac6046cfc02e415a8893e0391b9))
* added lazygit ([fc32619](https://github.com/folke/snacks.nvim/commit/fc32619734e4d3c024b8fc2db941c8ac19d2dd6c))
* added notifier ([44011dd](https://github.com/folke/snacks.nvim/commit/44011ddf0da07d0fa89734d21bb770f01a630077))
* added notify ([f4e0130](https://github.com/folke/snacks.nvim/commit/f4e0130ec3cb0299a3a85c589250c114d46f53c2))
* added toggle ([28c3029](https://github.com/folke/snacks.nvim/commit/28c30296991ac5549b49b7ecfb49f108f70d76ba))
* better buffer/window vars for terminal and float ([1abce78](https://github.com/folke/snacks.nvim/commit/1abce78a8b826943d5055464636cd9fad074b4bb))
* bigfile ([8d62b28](https://github.com/folke/snacks.nvim/commit/8d62b285d5026e3d7c064d435c424bab40d1910a))
* **bigfile:** show message when bigfile was detected ([fdc0d3d](https://github.com/folke/snacks.nvim/commit/fdc0d3d1f80a6be64e85a5a25dc34693edadd73f))
* bufdelete ([cc5353f](https://github.com/folke/snacks.nvim/commit/cc5353f6b3f3f3869e2110b2d3d1a95418653213))
* config & setup ([c98c4c0](https://github.com/folke/snacks.nvim/commit/c98c4c030711a59e6791d8e5cab7550e33ac2d2d))
* **config:** get config for snack with defaults and custom opts ([b3d08be](https://github.com/folke/snacks.nvim/commit/b3d08beb8c60fddc6bfbf96ac9f45c4db49e64af))
* **debug:** added simple profile function ([e1f736d](https://github.com/folke/snacks.nvim/commit/e1f736d71fb9020a09019a49d645d4fe6d9f30db))
* **docs:** better handling of overloads ([038b283](https://github.com/folke/snacks.nvim/commit/038b28319c3a4eba7220a679a5759c06e69b8493))
* ensure Snacks global is available when not using setup ([f0458ba](https://github.com/folke/snacks.nvim/commit/f0458bafb059da9885de4fbab1ae5cb6ce2cd0bb))
* float ([d106107](https://github.com/folke/snacks.nvim/commit/d106107cdccc7ecb9931e011a89df6011eed44c4))
* **float:** added support for splits ([977a3d3](https://github.com/folke/snacks.nvim/commit/977a3d345b6da2b819d9bc4870d3d8a7e026728e))
* **float:** better key mappings ([a171a81](https://github.com/folke/snacks.nvim/commit/a171a815b3acd72dd779781df5586a7cd6ddd649))
* initial commit ([63a24f6](https://github.com/folke/snacks.nvim/commit/63a24f6eb047530234297460a9b7ccd6af0b9858))
* **notifier:** add 1 cell left/right padding and make wrapping work properly ([efc9699](https://github.com/folke/snacks.nvim/commit/efc96996e5a98b619e87581e9527c871177dee52))
* **notifier:** added global keep config option ([f32d82d](https://github.com/folke/snacks.nvim/commit/f32d82d1b705512eb56c901d4d7de68eedc827b1))
* **notifier:** added minimal style ([b29a6d5](https://github.com/folke/snacks.nvim/commit/b29a6d5972943cb8fcfdfb94610d850f0ba050b3))
* **notifier:** allow closing notifs with `q` ([97acbbb](https://github.com/folke/snacks.nvim/commit/97acbbb654d13a0d38792fd6383973a2ca01a2bf))
* **notifier:** allow config of default filetype ([8a96888](https://github.com/folke/snacks.nvim/commit/8a968884098be83acb42f31a573e62b63420268e))
* **notifier:** enable wrapping by default ([d02aa2f](https://github.com/folke/snacks.nvim/commit/d02aa2f7cb49273330fd778818124ddb39838372))
* **notifier:** keep notif open when it's the current window ([1e95800](https://github.com/folke/snacks.nvim/commit/1e9580039b706cfc1f526fea2e46b6857473420b))
* quickfile ([d0ce645](https://github.com/folke/snacks.nvim/commit/d0ce6454f95fe056c65324a0f59a250532a658f3))
* rename ([fa33688](https://github.com/folke/snacks.nvim/commit/fa336883019110b8f525081665bf55c19df5f0aa))
* statuscolumn ([99b1700](https://github.com/folke/snacks.nvim/commit/99b170001592fe054368a220599da546de64894e))
* terminal ([e6cc7c9](https://github.com/folke/snacks.nvim/commit/e6cc7c998afa63eaf126d169f4702953f548d39f))
* **terminal:** allow to override the default terminal implementation (like toggleterm) ([11c9ee8](https://github.com/folke/snacks.nvim/commit/11c9ee83aa133f899dad966224df0e2d7de236f2))
* **terminal:** better defaults and winbar ([7ceeb47](https://github.com/folke/snacks.nvim/commit/7ceeb47e545619dff6dd8853f0a368afae7d3ec8))
* **terminal:** better double esc to go to normal mode ([a4af729](https://github.com/folke/snacks.nvim/commit/a4af729b2489714b066ca03f008bf5fe42c93343))
* **win:** better api to deal with sizes ([ac1a50c](https://github.com/folke/snacks.nvim/commit/ac1a50c810c5f67909921592afcebffa566ee3d3))
* **win:** custom views ([12d6f86](https://github.com/folke/snacks.nvim/commit/12d6f863f73cbd3580295adc5bc546c9d10e9e7f))
* words ([73445af](https://github.com/folke/snacks.nvim/commit/73445af400457722508395d18d2c974965c53fe2))


### Bug Fixes

* **config:** don't change defaults in merge ([6e825f5](https://github.com/folke/snacks.nvim/commit/6e825f509ed0e41dbafe5bca0236157772344554))
* **config:** merging of possible nil values ([f5bbb44](https://github.com/folke/snacks.nvim/commit/f5bbb446ed012361bbd54362558d1f32476206c7))
* **debug:** exclude vimrc from callers ([8845a6a](https://github.com/folke/snacks.nvim/commit/8845a6a912a528f63216ffe4b991b025c8955447))
* **float:** don't use backdrop for splits ([5eb64c5](https://github.com/folke/snacks.nvim/commit/5eb64c52aeb7271a3116751f1ec61b00536cdc08))
* **float:** only set default filetype if no ft is set ([66b2525](https://github.com/folke/snacks.nvim/commit/66b252535c7a78f0cd73755fad22b07b814309f1))
* **float:** proper closing of backdrop ([a528e77](https://github.com/folke/snacks.nvim/commit/a528e77397daea422ff84dde64124d4a7e352bc2))
* **notifier:** modifiable ([fd57c24](https://github.com/folke/snacks.nvim/commit/fd57c243015e6f2c863bb6c89e1417e77f3e0ea4))
* **notifier:** modifiable = false ([9ef9e69](https://github.com/folke/snacks.nvim/commit/9ef9e69620fc51d368fcee830a59bc9279594d43))
* **notifier:** show notifier errors with nvim_err_writeln ([e8061bc](https://github.com/folke/snacks.nvim/commit/e8061bcda095e3e9a3110ce697cdf7155e178d6e))
* **notifier:** sorting ([d9a1f23](https://github.com/folke/snacks.nvim/commit/d9a1f23e216230fcb2060e74056778d57d1d7676))
* simplify setup ([787b53e](https://github.com/folke/snacks.nvim/commit/787b53e7635f322bf42a42279f647340daf77770))
* **win:** backdrop ([71dd912](https://github.com/folke/snacks.nvim/commit/71dd912763918fd6b7fd07dd66ccd16afd4fea78))
* **win:** better implementation of window styles (previously views) ([6681097](https://github.com/folke/snacks.nvim/commit/66810971b9bd08e212faae467d884758bf142ffe))
* **win:** dont error when augroup is already deleted ([8c43597](https://github.com/folke/snacks.nvim/commit/8c43597f10dc2916200a8c857026f3f15fd3ae65))
* **win:** dont update win opt noautocmd ([a06e3ed](https://github.com/folke/snacks.nvim/commit/a06e3ed8fcd08aaf43fc2454bb1b0f935053aca7))
* **win:** no need to set EndOfBuffer winhl ([7a7f221](https://github.com/folke/snacks.nvim/commit/7a7f221020e024da831c2a3d72f8a9a0c330d711))
* **win:** use syntax as fallback for treesitter ([f3b69a6](https://github.com/folke/snacks.nvim/commit/f3b69a617a57597571fcf4263463f989fa3b663d))


### Performance Improvements

* **win:** set options with eventignore and handle ft manually ([80d9a89](https://github.com/folke/snacks.nvim/commit/80d9a894f9d6b2087e0dfee6d777e7b78490ba93))
