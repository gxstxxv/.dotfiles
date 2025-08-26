function brew_check
  set pkgs (brew list)

  set -l deps (brew list --installed-as-dependency)

  set -l nodeps
  for pkg in $pkgs
      if not contains -- $pkg $deps
        set nodeps $nodeps $pkg
      end
  end

  printf "%s\n" $nodeps \
      | sort \
      | column -x
end

