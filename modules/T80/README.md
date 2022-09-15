# T80 a Z80 Compatible Microprocessor Gateware IP Core

Attempt to finish all undocumented features and provide accurate timings.

## Changelog

- 3.5.1
  - Merged Gameboy fixes from Bruno Duarte Gouveia (brNX)
  - Passes Blargg's test ROMs
- 3.5.0
  - Test passed: ZEXDOC, ZEXALL, Z80Full(*), Z80memptr
    - (*) Currently only SCF and CCF instructions aren't passed X/Y flags check as correct implementation is still unclear.
- 3.0.3
  - Add undocumented DDCB and FDCB opcodes by TobiFlex 20.04.2010
- 3.0.1
  - Parity flag is just parity for 8080, also overflow for Z80, by Sean Riddle
- 3.0.0
  - Started tidyup
- 2.5.0
  - Unknown History before this point

Contributors:

```txt
Copyright (c) 2021 Bruno Duarte Gouveia
Copyright (c) 2018 Sorgelig
Copyright (c) 2010 TobiFlex
Copyright (c) 20xx Sean Riddle
Copyright (c) 2005 MikeJ
```

```txt
Copyright (c) 2001-2002 Daniel Wallner (jesus@opencores.org)
All rights reserved.

Redistributions in synthesized form must reproduce the above copyright
notice, this list of conditions and the following disclaimer in the
documentation and/or other materials provided with the distribution.

Neither the name of the author nor the names of other contributors may
be used to endorse or promote products derived from this software without
specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.
```
