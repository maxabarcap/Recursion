
    def merge_sort(sample)
      if sample.length < 2
        return sample
      else
        l_half = merge_sort(sample[0...sample.length/2])
        r_half = merge_sort(sample[sample.length/2...sample.length])
        merge(l_half, r_half)
      end
    end

    def merge(l,r)
      new_array = []
      until l.empty? and r.empty?
        if l.empty?
          new_array << r.shift
        elsif r.empty?
          new_array << l.shift
        else
          comparison = l <=> r
          if comparison == -1
            new_array << l.shift
          elsif comparison == 1
            new_arrray << r.shift
          else
            new_array << l.shift
          end
        end
      end
      return new_array
    end
