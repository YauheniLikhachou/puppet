## Checktest
Facter.add(:checktest) do
  setcode do
        Facter.value(:hostname) == 'serverpuppet'
  end
end
